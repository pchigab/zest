
include(CMakeParseArguments)
MESSAGE(STATUS "is build" ${CMAKE_BUILD_TYPE})

macro(${THE_PROJECT_PREFIX}_add_lib target)
    cmake_parse_arguments(THIS "SHARED;INSTALL" "" "FOLDER;SOURCES" ${ARGN})
	
	SET(LIBRARY_OUTPUT_PATH ${LIB_PATH})

	if (THIS_SHARED)
        add_library(${target} SHARED ${THIS_SOURCES})
    else()
        add_library(${target} ${THIS_SOURCES})
    endif()
	
	string(REPLACE "-" "_" NAME_UPPER "${target}")
    string(TOUPPER "${NAME_UPPER}" NAME_UPPER)
    set_target_properties(${target} PROPERTIES DEFINE_SYMBOL ${NAME_UPPER}_EXPORTS)

	if(${THE_PROJECT_PREFIX}_OS_MACOS)
		set_property(TARGET ${target} PROPERTY XCODE_ATTRIBUTE_CLANG_CXX_LIBRARY "libc++")
	endif()

	if (THIS_FOLDER)
		set_target_properties(${target} PROPERTIES FOLDER ${THIS_FOLDER})
	endif()
	
	if (THIS_INSTALL)
		if(${THE_PROJECT_PREFIX}_OS_WINDOWS)
			INSTALL(TARGETS ${target} RUNTIME DESTINATION ${BIN_PATH}${OUTPATH_SUFFIX})
		else()
			INSTALL(TARGETS ${target} LIBRARY DESTINATION ${BIN_PATH})
		endif()
	endif()
endmacro()

macro(${THE_PROJECT_PREFIX}_add_exe target)
    cmake_parse_arguments(THIS "" "" "FOLDER;SOURCES" ${ARGN})
	
	SET(EXECUTABLE_OUTPUT_PATH ${BIN_PATH})
		
	add_executable(${target} ${THIS_SOURCES})

	if (THIS_FOLDER)
		set_target_properties(${target} PROPERTIES FOLDER ${THIS_FOLDER})
	endif()

endmacro()
