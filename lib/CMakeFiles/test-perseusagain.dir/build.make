# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sourbh/gr-perseusagain

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sourbh/gr-perseusagain

# Include any dependencies generated for this target.
include lib/CMakeFiles/test-perseusagain.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/test-perseusagain.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/test-perseusagain.dir/flags.make

lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o: lib/CMakeFiles/test-perseusagain.dir/flags.make
lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o: lib/test_perseusagain.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sourbh/gr-perseusagain/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o"
	cd /home/sourbh/gr-perseusagain/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o -c /home/sourbh/gr-perseusagain/lib/test_perseusagain.cc

lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.i"
	cd /home/sourbh/gr-perseusagain/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sourbh/gr-perseusagain/lib/test_perseusagain.cc > CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.i

lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.s"
	cd /home/sourbh/gr-perseusagain/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sourbh/gr-perseusagain/lib/test_perseusagain.cc -o CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.s

lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o.requires:
.PHONY : lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o.requires

lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o.provides: lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-perseusagain.dir/build.make lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o.provides

lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o.provides.build: lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o

lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o: lib/CMakeFiles/test-perseusagain.dir/flags.make
lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o: lib/qa_perseusagain.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sourbh/gr-perseusagain/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o"
	cd /home/sourbh/gr-perseusagain/lib && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o -c /home/sourbh/gr-perseusagain/lib/qa_perseusagain.cc

lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.i"
	cd /home/sourbh/gr-perseusagain/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sourbh/gr-perseusagain/lib/qa_perseusagain.cc > CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.i

lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.s"
	cd /home/sourbh/gr-perseusagain/lib && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sourbh/gr-perseusagain/lib/qa_perseusagain.cc -o CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.s

lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o.requires:
.PHONY : lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o.requires

lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o.provides: lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o.requires
	$(MAKE) -f lib/CMakeFiles/test-perseusagain.dir/build.make lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o.provides.build
.PHONY : lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o.provides

lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o.provides.build: lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o

# Object files for target test-perseusagain
test__perseusagain_OBJECTS = \
"CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o" \
"CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o"

# External object files for target test-perseusagain
test__perseusagain_EXTERNAL_OBJECTS =

lib/test-perseusagain: lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o
lib/test-perseusagain: lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o
lib/test-perseusagain: /usr/local/lib/libgnuradio-runtime.so
lib/test-perseusagain: /usr/lib/libboost_filesystem-mt.so
lib/test-perseusagain: /usr/lib/libboost_system-mt.so
lib/test-perseusagain: /usr/lib/libcppunit.so
lib/test-perseusagain: /usr/local/lib/libperseus-sdr.so
lib/test-perseusagain: lib/libgnuradio-perseusagain.so
lib/test-perseusagain: /usr/local/lib/libgnuradio-runtime.so
lib/test-perseusagain: /usr/lib/libboost_filesystem-mt.so
lib/test-perseusagain: /usr/lib/libboost_system-mt.so
lib/test-perseusagain: lib/CMakeFiles/test-perseusagain.dir/build.make
lib/test-perseusagain: lib/CMakeFiles/test-perseusagain.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable test-perseusagain"
	cd /home/sourbh/gr-perseusagain/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test-perseusagain.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/test-perseusagain.dir/build: lib/test-perseusagain
.PHONY : lib/CMakeFiles/test-perseusagain.dir/build

lib/CMakeFiles/test-perseusagain.dir/requires: lib/CMakeFiles/test-perseusagain.dir/test_perseusagain.cc.o.requires
lib/CMakeFiles/test-perseusagain.dir/requires: lib/CMakeFiles/test-perseusagain.dir/qa_perseusagain.cc.o.requires
.PHONY : lib/CMakeFiles/test-perseusagain.dir/requires

lib/CMakeFiles/test-perseusagain.dir/clean:
	cd /home/sourbh/gr-perseusagain/lib && $(CMAKE_COMMAND) -P CMakeFiles/test-perseusagain.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/test-perseusagain.dir/clean

lib/CMakeFiles/test-perseusagain.dir/depend:
	cd /home/sourbh/gr-perseusagain && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sourbh/gr-perseusagain /home/sourbh/gr-perseusagain/lib /home/sourbh/gr-perseusagain /home/sourbh/gr-perseusagain/lib /home/sourbh/gr-perseusagain/lib/CMakeFiles/test-perseusagain.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/test-perseusagain.dir/depend

