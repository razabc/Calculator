# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2020.1.1\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Raz\CLionProjects\calculator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Raz\CLionProjects\calculator\cmake-build-debug

# Include any dependencies generated for this target.
include GoogleTests\googlemock\CMakeFiles\gmock.dir\depend.make

# Include the progress variables for this target.
include GoogleTests\googlemock\CMakeFiles\gmock.dir\progress.make

# Include the compile flags for this target's objects.
include GoogleTests\googlemock\CMakeFiles\gmock.dir\flags.make

GoogleTests\googlemock\CMakeFiles\gmock.dir\__\googletest\src\gtest-all.cc.obj: GoogleTests\googlemock\CMakeFiles\gmock.dir\flags.make
GoogleTests\googlemock\CMakeFiles\gmock.dir\__\googletest\src\gtest-all.cc.obj: ..\GoogleTests\googletest\src\gtest-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object GoogleTests/googlemock/CMakeFiles/gmock.dir/__/googletest/src/gtest-all.cc.obj"
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\GoogleTests\googlemock
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\gmock.dir\__\googletest\src\gtest-all.cc.obj /Fd..\..\bin\gmockd.pdb /FS -c C:\Users\Raz\CLionProjects\calculator\GoogleTests\googletest\src\gtest-all.cc
<<
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug

GoogleTests\googlemock\CMakeFiles\gmock.dir\__\googletest\src\gtest-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock.dir/__/googletest/src/gtest-all.cc.i"
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\GoogleTests\googlemock
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\bin\Hostx86\x86\cl.exe" > CMakeFiles\gmock.dir\__\googletest\src\gtest-all.cc.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Raz\CLionProjects\calculator\GoogleTests\googletest\src\gtest-all.cc
<<
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug

GoogleTests\googlemock\CMakeFiles\gmock.dir\__\googletest\src\gtest-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock.dir/__/googletest/src/gtest-all.cc.s"
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\GoogleTests\googlemock
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\gmock.dir\__\googletest\src\gtest-all.cc.s /c C:\Users\Raz\CLionProjects\calculator\GoogleTests\googletest\src\gtest-all.cc
<<
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug

GoogleTests\googlemock\CMakeFiles\gmock.dir\src\gmock-all.cc.obj: GoogleTests\googlemock\CMakeFiles\gmock.dir\flags.make
GoogleTests\googlemock\CMakeFiles\gmock.dir\src\gmock-all.cc.obj: ..\GoogleTests\googlemock\src\gmock-all.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object GoogleTests/googlemock/CMakeFiles/gmock.dir/src/gmock-all.cc.obj"
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\GoogleTests\googlemock
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\gmock.dir\src\gmock-all.cc.obj /Fd..\..\bin\gmockd.pdb /FS -c C:\Users\Raz\CLionProjects\calculator\GoogleTests\googlemock\src\gmock-all.cc
<<
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug

GoogleTests\googlemock\CMakeFiles\gmock.dir\src\gmock-all.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gmock.dir/src/gmock-all.cc.i"
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\GoogleTests\googlemock
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\bin\Hostx86\x86\cl.exe" > CMakeFiles\gmock.dir\src\gmock-all.cc.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Raz\CLionProjects\calculator\GoogleTests\googlemock\src\gmock-all.cc
<<
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug

GoogleTests\googlemock\CMakeFiles\gmock.dir\src\gmock-all.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gmock.dir/src/gmock-all.cc.s"
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\GoogleTests\googlemock
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\bin\Hostx86\x86\cl.exe" @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\gmock.dir\src\gmock-all.cc.s /c C:\Users\Raz\CLionProjects\calculator\GoogleTests\googlemock\src\gmock-all.cc
<<
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug

# Object files for target gmock
gmock_OBJECTS = \
"CMakeFiles\gmock.dir\__\googletest\src\gtest-all.cc.obj" \
"CMakeFiles\gmock.dir\src\gmock-all.cc.obj"

# External object files for target gmock
gmock_EXTERNAL_OBJECTS =

lib\gmockd.lib: GoogleTests\googlemock\CMakeFiles\gmock.dir\__\googletest\src\gtest-all.cc.obj
lib\gmockd.lib: GoogleTests\googlemock\CMakeFiles\gmock.dir\src\gmock-all.cc.obj
lib\gmockd.lib: GoogleTests\googlemock\CMakeFiles\gmock.dir\build.make
lib\gmockd.lib: GoogleTests\googlemock\CMakeFiles\gmock.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library ..\..\lib\gmockd.lib"
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\GoogleTests\googlemock
	$(CMAKE_COMMAND) -P CMakeFiles\gmock.dir\cmake_clean_target.cmake
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\GoogleTests\googlemock
	"C:\PROGRA~2\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.25.28610\bin\Hostx86\x86\link.exe" /lib /nologo /machine:X86 /out:..\..\lib\gmockd.lib @CMakeFiles\gmock.dir\objects1.rsp 
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug

# Rule to build all files generated by this target.
GoogleTests\googlemock\CMakeFiles\gmock.dir\build: lib\gmockd.lib

.PHONY : GoogleTests\googlemock\CMakeFiles\gmock.dir\build

GoogleTests\googlemock\CMakeFiles\gmock.dir\clean:
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\GoogleTests\googlemock
	$(CMAKE_COMMAND) -P CMakeFiles\gmock.dir\cmake_clean.cmake
	cd C:\Users\Raz\CLionProjects\calculator\cmake-build-debug
.PHONY : GoogleTests\googlemock\CMakeFiles\gmock.dir\clean

GoogleTests\googlemock\CMakeFiles\gmock.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\Raz\CLionProjects\calculator C:\Users\Raz\CLionProjects\calculator\GoogleTests\googlemock C:\Users\Raz\CLionProjects\calculator\cmake-build-debug C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\GoogleTests\googlemock C:\Users\Raz\CLionProjects\calculator\cmake-build-debug\GoogleTests\googlemock\CMakeFiles\gmock.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : GoogleTests\googlemock\CMakeFiles\gmock.dir\depend
