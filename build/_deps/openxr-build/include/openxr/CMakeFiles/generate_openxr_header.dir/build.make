# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/donal/uni/master_thesis/VR_playground

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/donal/uni/master_thesis/VR_playground/build

# Utility rule file for generate_openxr_header.

# Include any custom commands dependencies for this target.
include _deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header.dir/compiler_depend.make

# Include the progress variables for this target.
include _deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header.dir/progress.make

_deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header: _deps/openxr-build/include/openxr/openxr.h
_deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header: _deps/openxr-build/include/openxr/openxr_loader_negotiation.h
_deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header: _deps/openxr-build/include/openxr/openxr_platform.h
_deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header: _deps/openxr-build/include/openxr/openxr_reflection.h
_deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header: _deps/openxr-build/include/openxr/openxr_reflection_structs.h
_deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header: _deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h

_deps/openxr-build/include/openxr/openxr.h: camera/openxr/specification/scripts/genxr.py
_deps/openxr-build/include/openxr/openxr.h: camera/openxr/specification/scripts/cgenerator.py
_deps/openxr-build/include/openxr/openxr.h: camera/openxr/specification/scripts/creflectiongenerator.py
_deps/openxr-build/include/openxr/openxr.h: camera/openxr/specification/scripts/generator.py
_deps/openxr-build/include/openxr/openxr.h: camera/openxr/specification/scripts/reg.py
_deps/openxr-build/include/openxr/openxr.h: camera/openxr/specification/registry/xr.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/donal/uni/master_thesis/VR_playground/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr/openxr.h"
	cd /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr && /usr/bin/cmake -E env PYTHONPATH=/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts:/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/src/scripts: /home/donal/.pyenv/shims/python3 /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts/genxr.py -registry /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/registry/xr.xml -o /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr openxr.h

_deps/openxr-build/include/openxr/openxr_loader_negotiation.h: camera/openxr/specification/scripts/genxr.py
_deps/openxr-build/include/openxr/openxr_loader_negotiation.h: camera/openxr/specification/scripts/cgenerator.py
_deps/openxr-build/include/openxr/openxr_loader_negotiation.h: camera/openxr/specification/scripts/creflectiongenerator.py
_deps/openxr-build/include/openxr/openxr_loader_negotiation.h: camera/openxr/specification/scripts/generator.py
_deps/openxr-build/include/openxr/openxr_loader_negotiation.h: camera/openxr/specification/scripts/reg.py
_deps/openxr-build/include/openxr/openxr_loader_negotiation.h: camera/openxr/specification/registry/xr.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/donal/uni/master_thesis/VR_playground/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr/openxr_loader_negotiation.h"
	cd /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr && /usr/bin/cmake -E env PYTHONPATH=/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts:/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/src/scripts: /home/donal/.pyenv/shims/python3 /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts/genxr.py -registry /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/registry/xr.xml -o /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr openxr_loader_negotiation.h

_deps/openxr-build/include/openxr/openxr_platform.h: camera/openxr/specification/scripts/genxr.py
_deps/openxr-build/include/openxr/openxr_platform.h: camera/openxr/specification/scripts/cgenerator.py
_deps/openxr-build/include/openxr/openxr_platform.h: camera/openxr/specification/scripts/creflectiongenerator.py
_deps/openxr-build/include/openxr/openxr_platform.h: camera/openxr/specification/scripts/generator.py
_deps/openxr-build/include/openxr/openxr_platform.h: camera/openxr/specification/scripts/reg.py
_deps/openxr-build/include/openxr/openxr_platform.h: camera/openxr/specification/registry/xr.xml
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/donal/uni/master_thesis/VR_playground/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr/openxr_platform.h"
	cd /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr && /usr/bin/cmake -E env PYTHONPATH=/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts:/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/src/scripts: /home/donal/.pyenv/shims/python3 /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts/genxr.py -registry /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/registry/xr.xml -o /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr openxr_platform.h

_deps/openxr-build/include/openxr/openxr_reflection.h: camera/openxr/specification/scripts/genxr.py
_deps/openxr-build/include/openxr/openxr_reflection.h: camera/openxr/specification/scripts/cgenerator.py
_deps/openxr-build/include/openxr/openxr_reflection.h: camera/openxr/specification/scripts/creflectiongenerator.py
_deps/openxr-build/include/openxr/openxr_reflection.h: camera/openxr/specification/scripts/generator.py
_deps/openxr-build/include/openxr/openxr_reflection.h: camera/openxr/specification/scripts/reg.py
_deps/openxr-build/include/openxr/openxr_reflection.h: camera/openxr/specification/registry/xr.xml
_deps/openxr-build/include/openxr/openxr_reflection.h: camera/openxr/specification/scripts/jinja_helpers.py
_deps/openxr-build/include/openxr/openxr_reflection.h: camera/openxr/specification/scripts/template_openxr_reflection.h
_deps/openxr-build/include/openxr/openxr_reflection.h: camera/openxr/specification/scripts/template_openxr_reflection_parent_structs.h
_deps/openxr-build/include/openxr/openxr_reflection.h: camera/openxr/specification/scripts/template_openxr_reflection_structs.h
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/donal/uni/master_thesis/VR_playground/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr/openxr_reflection.h"
	cd /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr && /usr/bin/cmake -E env PYTHONPATH=/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts:/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/src/scripts: /home/donal/.pyenv/shims/python3 /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts/genxr.py -registry /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/registry/xr.xml -o /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr openxr_reflection.h

_deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h: camera/openxr/specification/scripts/genxr.py
_deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h: camera/openxr/specification/scripts/cgenerator.py
_deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h: camera/openxr/specification/scripts/creflectiongenerator.py
_deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h: camera/openxr/specification/scripts/generator.py
_deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h: camera/openxr/specification/scripts/reg.py
_deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h: camera/openxr/specification/registry/xr.xml
_deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h: camera/openxr/specification/scripts/jinja_helpers.py
_deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h: camera/openxr/specification/scripts/template_openxr_reflection.h
_deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h: camera/openxr/specification/scripts/template_openxr_reflection_parent_structs.h
_deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h: camera/openxr/specification/scripts/template_openxr_reflection_structs.h
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/donal/uni/master_thesis/VR_playground/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h"
	cd /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr && /usr/bin/cmake -E env PYTHONPATH=/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts:/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/src/scripts: /home/donal/.pyenv/shims/python3 /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts/genxr.py -registry /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/registry/xr.xml -o /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr openxr_reflection_parent_structs.h

_deps/openxr-build/include/openxr/openxr_reflection_structs.h: camera/openxr/specification/scripts/genxr.py
_deps/openxr-build/include/openxr/openxr_reflection_structs.h: camera/openxr/specification/scripts/cgenerator.py
_deps/openxr-build/include/openxr/openxr_reflection_structs.h: camera/openxr/specification/scripts/creflectiongenerator.py
_deps/openxr-build/include/openxr/openxr_reflection_structs.h: camera/openxr/specification/scripts/generator.py
_deps/openxr-build/include/openxr/openxr_reflection_structs.h: camera/openxr/specification/scripts/reg.py
_deps/openxr-build/include/openxr/openxr_reflection_structs.h: camera/openxr/specification/registry/xr.xml
_deps/openxr-build/include/openxr/openxr_reflection_structs.h: camera/openxr/specification/scripts/jinja_helpers.py
_deps/openxr-build/include/openxr/openxr_reflection_structs.h: camera/openxr/specification/scripts/template_openxr_reflection.h
_deps/openxr-build/include/openxr/openxr_reflection_structs.h: camera/openxr/specification/scripts/template_openxr_reflection_parent_structs.h
_deps/openxr-build/include/openxr/openxr_reflection_structs.h: camera/openxr/specification/scripts/template_openxr_reflection_structs.h
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/donal/uni/master_thesis/VR_playground/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr/openxr_reflection_structs.h"
	cd /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr && /usr/bin/cmake -E env PYTHONPATH=/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts:/home/donal/uni/master_thesis/VR_playground/build/camera/openxr/src/scripts: /home/donal/.pyenv/shims/python3 /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/scripts/genxr.py -registry /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/specification/registry/xr.xml -o /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr openxr_reflection_structs.h

generate_openxr_header: _deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header
generate_openxr_header: _deps/openxr-build/include/openxr/openxr.h
generate_openxr_header: _deps/openxr-build/include/openxr/openxr_loader_negotiation.h
generate_openxr_header: _deps/openxr-build/include/openxr/openxr_platform.h
generate_openxr_header: _deps/openxr-build/include/openxr/openxr_reflection.h
generate_openxr_header: _deps/openxr-build/include/openxr/openxr_reflection_parent_structs.h
generate_openxr_header: _deps/openxr-build/include/openxr/openxr_reflection_structs.h
generate_openxr_header: _deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header.dir/build.make
.PHONY : generate_openxr_header

# Rule to build all files generated by this target.
_deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header.dir/build: generate_openxr_header
.PHONY : _deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header.dir/build

_deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header.dir/clean:
	cd /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr && $(CMAKE_COMMAND) -P CMakeFiles/generate_openxr_header.dir/cmake_clean.cmake
.PHONY : _deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header.dir/clean

_deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header.dir/depend:
	cd /home/donal/uni/master_thesis/VR_playground/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/donal/uni/master_thesis/VR_playground /home/donal/uni/master_thesis/VR_playground/build/camera/openxr/include/openxr /home/donal/uni/master_thesis/VR_playground/build /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr /home/donal/uni/master_thesis/VR_playground/build/_deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : _deps/openxr-build/include/openxr/CMakeFiles/generate_openxr_header.dir/depend
