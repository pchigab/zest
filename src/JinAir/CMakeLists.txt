
set(PROJECT_NAME JinAir)

set(INCROOT ${CMAKE_ROOT_DIR}/include/JinAir)
set(SRCROOT ${CMAKE_ROOT_DIR}/src/JinAir)

set(DIR_SRCS 
	${INCROOT}/JinAir.h
	${INCROOT}/TeamMember.h
    ${INCROOT}/sOs.h
	${SRCROOT}/sOs.cpp
)

set(INC_DIR
	${INCROOT}
	${CMAKE_ROOT_DIR}/include
)

include_directories(${INC_DIR})

zest_add_lib(
			${PROJECT_NAME}
			FOLDER "Team"
			SOURCES ${DIR_SRCS}
)
