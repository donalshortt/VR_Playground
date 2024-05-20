#include "../Common/DebugOutput.h"
#include "../Common/GraphicsAPI_OpenGL.h"
#include "../Common/OpenXRDebugUtils.h"

class OpenXRCamera {
public:
        OpenXRCamera(GraphicsAPI_Type apiType) : m_apiType(apiType) {

        }
        ~OpenXRCamera() = default;

        void Run() {
			CreateInstance();
			CreateDebugMessenger();

			GetInstanceProperties();
			GetSystemID();

			DestroyDebugMessenger();
			DestroyInstance();
        }
private:
        void CreateInstance() {
			XrApplicationInfo AI;
			strncpy(AI.applicationName, "VR Playground For Camera", XR_MAX_APPLICATION_NAME_SIZE);
			AI.applicationVersion = 1;
			strncpy(AI.engineName, "OpenXR Engine", XR_MAX_ENGINE_NAME_SIZE);
			AI.engineVersion = 1;
			AI.apiVersion = XR_CURRENT_API_VERSION;

			m_instanceExtensions.push_back(XR_EXT_DEBUG_UTILS_EXTENSION_NAME);
			// Ensure m_apiType is already defined when we call this line.
			m_instanceExtensions.push_back(GetGraphicsAPIInstanceExtensionString(m_apiType));

			// Get all the API Layers from the OpenXR runtime.
			uint32_t apiLayerCount = 0;
			std::vector<XrApiLayerProperties> apiLayerProperties;
			OPENXR_CHECK(xrEnumerateApiLayerProperties(0, &apiLayerCount, nullptr), "Failed to enumerate ApiLayerProperties.");
			apiLayerProperties.resize(apiLayerCount, {XR_TYPE_API_LAYER_PROPERTIES});
			OPENXR_CHECK(xrEnumerateApiLayerProperties(apiLayerCount, &apiLayerCount, apiLayerProperties.data()), "Failed to enumerate ApiLayerProperties.");

			// Check the requested API layers against the ones from the OpenXR. If found add it to the Active API Layers.
			for (auto &requestLayer : m_apiLayers) {
				for (auto &layerProperty : apiLayerProperties) {
					if (strcmp(requestLayer.c_str(), layerProperty.layerName) != 0) {
						continue;
					} else {
						m_activeAPILayers.push_back(requestLayer.c_str());
						break;
					}
				}
			}

			// Get all the Instance Extensions from the OpenXR instance.
			uint32_t extensionCount = 0;
			std::vector<XrExtensionProperties> extensionProperties;
			OPENXR_CHECK(xrEnumerateInstanceExtensionProperties(nullptr, 0, &extensionCount, nullptr), "Failed to enumerate InstanceExtensionProperties.");
			extensionProperties.resize(extensionCount, {XR_TYPE_EXTENSION_PROPERTIES});
			OPENXR_CHECK(xrEnumerateInstanceExtensionProperties(nullptr, extensionCount, &extensionCount, extensionProperties.data()), "Failed to enumerate InstanceExtensionProperties.");

			// Check the requested Instance Extensions against the ones from the OpenXR runtime.
			// If an extension is found add it to Active Instance Extensions.
			// Log error if the Instance Extension is not found.
			for (auto &requestedInstanceExtension : m_instanceExtensions) {
				bool found = false;
				for (auto &extensionProperty : extensionProperties) {
					// strcmp returns 0 if the strings match.
					if (strcmp(requestedInstanceExtension.c_str(), extensionProperty.extensionName) != 0) {
						continue;
					} else {
						m_activeInstanceExtensions.push_back(requestedInstanceExtension.c_str());
						found = true;
						break;
					}
				}
				if (!found) {
					XR_TUT_LOG_ERROR("Failed to find OpenXR instance extension: " << requestedInstanceExtension);
				}
			}
	
			XrInstanceCreateInfo instanceCI{XR_TYPE_INSTANCE_CREATE_INFO};
			instanceCI.createFlags = 0;
			instanceCI.applicationInfo = AI;
			instanceCI.enabledApiLayerCount = static_cast<uint32_t>(m_activeAPILayers.size());
			instanceCI.enabledApiLayerNames = m_activeAPILayers.data();
			instanceCI.enabledExtensionCount = static_cast<uint32_t>(m_activeInstanceExtensions.size());
			instanceCI.enabledExtensionNames = m_activeInstanceExtensions.data();
			OPENXR_CHECK(xrCreateInstance(&instanceCI, &m_xrInstance), "Failed to create Instance.");
        }
        void DestroyInstance() {
			OPENXR_CHECK(xrDestroyInstance(m_xrInstance), "Failed to destroy Instance.");
        }
        void CreateDebugMessenger() {
			// Check that "XR_EXT_debug_utils" is in the active Instance Extensions before creating an XrDebugUtilsMessengerEXT.
			if (IsStringInVector(m_activeInstanceExtensions, XR_EXT_DEBUG_UTILS_EXTENSION_NAME)) {
				m_debugUtilsMessenger = CreateOpenXRDebugUtilsMessenger(m_xrInstance);  // From OpenXRDebugUtils.h.
			}
        }
        void DestroyDebugMessenger() {
			// Check that "XR_EXT_debug_utils" is in the active Instance Extensions before destroying the XrDebugUtilsMessengerEXT.
			if (m_debugUtilsMessenger != XR_NULL_HANDLE) {
				DestroyOpenXRDebugUtilsMessenger(m_xrInstance, m_debugUtilsMessenger);  // From OpenXRDebugUtils.h.
			}
        }
        void GetInstanceProperties() {
			XrInstanceProperties instanceProperties{XR_TYPE_INSTANCE_PROPERTIES};
			OPENXR_CHECK(xrGetInstanceProperties(m_xrInstance, &instanceProperties), "Failed to get InstanceProperties.");

			XR_TUT_LOG("OpenXR Runtime: " << instanceProperties.runtimeName << " - "
										<< XR_VERSION_MAJOR(instanceProperties.runtimeVersion) << "."
										<< XR_VERSION_MINOR(instanceProperties.runtimeVersion) << "."
										<< XR_VERSION_PATCH(instanceProperties.runtimeVersion));
        }
        void GetSystemID() {
			// Get the XrSystemId from the instance and the supplied XrFormFactor.
			XrSystemGetInfo systemGI{XR_TYPE_SYSTEM_GET_INFO};
			systemGI.formFactor = m_formFactor;
			OPENXR_CHECK(xrGetSystem(m_xrInstance, &systemGI, &m_systemID), "Failed to get SystemID.");

			// Get the System's properties for some general information about the hardware and the vendor.
			OPENXR_CHECK(xrGetSystemProperties(m_xrInstance, m_systemID, &m_systemProperties), "Failed to get SystemProperties.");
        }
        void PollSystemEvents()
        {
        }
private:
        XrInstance m_xrInstance = {};
        std::vector<const char *> m_activeAPILayers = {};
        std::vector<const char *> m_activeInstanceExtensions = {};
        std::vector<std::string> m_apiLayers = {};
        std::vector<std::string> m_instanceExtensions = {};

        XrDebugUtilsMessengerEXT m_debugUtilsMessenger = {};

        XrFormFactor m_formFactor = XR_FORM_FACTOR_HEAD_MOUNTED_DISPLAY;
        XrSystemId m_systemID = {};
        XrSystemProperties m_systemProperties = {XR_TYPE_SYSTEM_PROPERTIES};

        GraphicsAPI_Type m_apiType = UNKNOWN;

        bool m_applicationRunning = true;
        bool m_sessionRunning = false;
};

void OpenXRCamera_Main(GraphicsAPI_Type apiType) {
    DebugOutput debugOutput;  // This redirects std::cerr and std::cout to the IDE's output or Android Studio's logcat.
    XR_TUT_LOG("LOG CHECK");
    OpenXRCamera app(apiType);
    app.Run();
}

int main(int argc, char **argv) {
    OpenXRCamera_Main(OPENGL);
}
