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
include swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/depend.make

# Include the progress variables for this target.
include swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/progress.make

# Include the compile flags for this target's objects.
include swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/flags.make

swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o: swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/flags.make
swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o: swig/_perseusagain_swig_doc_tag.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sourbh/gr-perseusagain/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o"
	cd /home/sourbh/gr-perseusagain/swig && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o -c /home/sourbh/gr-perseusagain/swig/_perseusagain_swig_doc_tag.cpp

swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.i"
	cd /home/sourbh/gr-perseusagain/swig && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sourbh/gr-perseusagain/swig/_perseusagain_swig_doc_tag.cpp > CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.i

swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.s"
	cd /home/sourbh/gr-perseusagain/swig && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sourbh/gr-perseusagain/swig/_perseusagain_swig_doc_tag.cpp -o CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.s

swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o.requires:
.PHONY : swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o.requires

swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o.provides: swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o.requires
	$(MAKE) -f swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/build.make swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o.provides.build
.PHONY : swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o.provides

swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o.provides.build: swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o

# Object files for target _perseusagain_swig_doc_tag
_perseusagain_swig_doc_tag_OBJECTS = \
"CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o"

# External object files for target _perseusagain_swig_doc_tag
_perseusagain_swig_doc_tag_EXTERNAL_OBJECTS =

swig/_perseusagain_swig_doc_tag: swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o
swig/_perseusagain_swig_doc_tag: swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/build.make
swig/_perseusagain_swig_doc_tag: swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable _perseusagain_swig_doc_tag"
	cd /home/sourbh/gr-perseusagain/swig && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/_perseusagain_swig_doc_tag.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/build: swig/_perseusagain_swig_doc_tag
.PHONY : swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/build

swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/requires: swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/_perseusagain_swig_doc_tag.cpp.o.requires
.PHONY : swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/requires

swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/clean:
	cd /home/sourbh/gr-perseusagain/swig && $(CMAKE_COMMAND) -P CMakeFiles/_perseusagain_swig_doc_tag.dir/cmake_clean.cmake
.PHONY : swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/clean

swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/depend:
	cd /home/sourbh/gr-perseusagain && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sourbh/gr-perseusagain /home/sourbh/gr-perseusagain/swig /home/sourbh/gr-perseusagain /home/sourbh/gr-perseusagain/swig /home/sourbh/gr-perseusagain/swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : swig/CMakeFiles/_perseusagain_swig_doc_tag.dir/depend

