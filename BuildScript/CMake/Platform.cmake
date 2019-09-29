
MESSAGE(STATUS "Operation System is " ${CMAKE_SYSTEM})
if(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
	set(${THE_PROJECT_PREFIX}_OS_WINDOWS 1)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Darwin")
    if(IOS)
		set(${THE_PROJECT_PREFIX}_OS_IOS 1)
	else()
		set(${THE_PROJECT_PREFIX}_OS_MACOS 1)
		
		# detect OS X version. (use '/usr/bin/sw_vers -productVersion' to extract V from '10.V.x'.)
        EXEC_PROGRAM(/usr/bin/sw_vers ARGS -productVersion OUTPUT_VARIABLE MACOSX_VERSION_RAW)
        STRING(REGEX REPLACE "10\\.([0-9]+).*" "\\1" MACOSX_VERSION "${MACOSX_VERSION_RAW}")
        if(${MACOSX_VERSION} LESS 7)
            message(FATAL_ERROR "Unsupported version of OS X: ${MACOSX_VERSION_RAW}")
            return()
        endif()
	endif()
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Linux")
	set(${THE_PROJECT_PREFIX}_OS_UNIX 1)
	
	if(ANDROID)
        set(${THE_PROJECT_PREFIX}_OS_ANDROID 1)
    else()
        set(${THE_PROJECT_PREFIX}_OS_LINUX 1)
    endif()
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "iOS")
    set(${THE_PROJECT_PREFIX}_OS_IOS 1)
elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Android")
    set(${THE_PROJECT_PREFIX}_OS_ANDROID 1)
else()
	message(FATAL_ERROR "Unsupported operating system or environment")
	return()
endif()

