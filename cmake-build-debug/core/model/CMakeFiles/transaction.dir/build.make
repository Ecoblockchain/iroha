# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/makoto/soramitsudev/iroha

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/makoto/soramitsudev/iroha/cmake-build-debug

# Include any dependencies generated for this target.
include core/model/CMakeFiles/transaction.dir/depend.make

# Include the progress variables for this target.
include core/model/CMakeFiles/transaction.dir/progress.make

# Include the compile flags for this target's objects.
include core/model/CMakeFiles/transaction.dir/flags.make

core/model/CMakeFiles/transaction.dir/transaction.cpp.o: core/model/CMakeFiles/transaction.dir/flags.make
core/model/CMakeFiles/transaction.dir/transaction.cpp.o: ../core/model/transaction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/makoto/soramitsudev/iroha/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object core/model/CMakeFiles/transaction.dir/transaction.cpp.o"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/model && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/transaction.dir/transaction.cpp.o -c /Users/makoto/soramitsudev/iroha/core/model/transaction.cpp

core/model/CMakeFiles/transaction.dir/transaction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/transaction.dir/transaction.cpp.i"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/model && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/makoto/soramitsudev/iroha/core/model/transaction.cpp > CMakeFiles/transaction.dir/transaction.cpp.i

core/model/CMakeFiles/transaction.dir/transaction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/transaction.dir/transaction.cpp.s"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/model && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/makoto/soramitsudev/iroha/core/model/transaction.cpp -o CMakeFiles/transaction.dir/transaction.cpp.s

core/model/CMakeFiles/transaction.dir/transaction.cpp.o.requires:

.PHONY : core/model/CMakeFiles/transaction.dir/transaction.cpp.o.requires

core/model/CMakeFiles/transaction.dir/transaction.cpp.o.provides: core/model/CMakeFiles/transaction.dir/transaction.cpp.o.requires
	$(MAKE) -f core/model/CMakeFiles/transaction.dir/build.make core/model/CMakeFiles/transaction.dir/transaction.cpp.o.provides.build
.PHONY : core/model/CMakeFiles/transaction.dir/transaction.cpp.o.provides

core/model/CMakeFiles/transaction.dir/transaction.cpp.o.provides.build: core/model/CMakeFiles/transaction.dir/transaction.cpp.o


# Object files for target transaction
transaction_OBJECTS = \
"CMakeFiles/transaction.dir/transaction.cpp.o"

# External object files for target transaction
transaction_EXTERNAL_OBJECTS =

core/model/libtransaction.a: core/model/CMakeFiles/transaction.dir/transaction.cpp.o
core/model/libtransaction.a: core/model/CMakeFiles/transaction.dir/build.make
core/model/libtransaction.a: core/model/CMakeFiles/transaction.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/makoto/soramitsudev/iroha/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libtransaction.a"
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/model && $(CMAKE_COMMAND) -P CMakeFiles/transaction.dir/cmake_clean_target.cmake
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/model && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/transaction.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
core/model/CMakeFiles/transaction.dir/build: core/model/libtransaction.a

.PHONY : core/model/CMakeFiles/transaction.dir/build

core/model/CMakeFiles/transaction.dir/requires: core/model/CMakeFiles/transaction.dir/transaction.cpp.o.requires

.PHONY : core/model/CMakeFiles/transaction.dir/requires

core/model/CMakeFiles/transaction.dir/clean:
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/model && $(CMAKE_COMMAND) -P CMakeFiles/transaction.dir/cmake_clean.cmake
.PHONY : core/model/CMakeFiles/transaction.dir/clean

core/model/CMakeFiles/transaction.dir/depend:
	cd /Users/makoto/soramitsudev/iroha/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/makoto/soramitsudev/iroha /Users/makoto/soramitsudev/iroha/core/model /Users/makoto/soramitsudev/iroha/cmake-build-debug /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/model /Users/makoto/soramitsudev/iroha/cmake-build-debug/core/model/CMakeFiles/transaction.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : core/model/CMakeFiles/transaction.dir/depend

