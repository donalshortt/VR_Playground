# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/donal/uni/master_thesis/VR_playground/build/camera/openxr"
  "/home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build"
  "/home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-subbuild/openxr-populate-prefix"
  "/home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-subbuild/openxr-populate-prefix/tmp"
  "/home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-subbuild/openxr-populate-prefix/src/openxr-populate-stamp"
  "/home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-subbuild/openxr-populate-prefix/src"
  "/home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-subbuild/openxr-populate-prefix/src/openxr-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-subbuild/openxr-populate-prefix/src/openxr-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-subbuild/openxr-populate-prefix/src/openxr-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
