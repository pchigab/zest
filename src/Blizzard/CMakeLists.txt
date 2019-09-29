
set(PROJECT_NAME Blizzard)

set(INCROOT ${CMAKE_ROOT_DIR}/include/Blizzard)
set(SRCROOT ${CMAKE_ROOT_DIR}/src/Blizzard)

set(DIR_SRCS 
	${INCROOT}/Blizzard.h
	${SRCROOT}/Blizzard.cpp
	${INCROOT}/SC.h
	${INCROOT}/Ji.h
)

set(INC_DIR
	${INCROOT}
	${CMAKE_ROOT_DIR}/include
)

include_directories(${INC_DIR})

zest_add_lib(
			${PROJECT_NAME}
			FOLDER "Titan"
			SOURCES ${DIR_SRCS}
)
