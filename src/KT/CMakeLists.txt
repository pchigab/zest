
set(PROJECT_NAME KT)

set(INCROOT ${CMAKE_ROOT_DIR}/include/KT)
set(SRCROOT ${CMAKE_ROOT_DIR}/src/KT)

set(DIR_SRCS 
    ${INCROOT}/KT.h
    ${INCROOT}/TeamMember.h
    ${INCROOT}/Zest.h
	${SRCROOT}/Zest.cpp
    ${INCROOT}/Stats.h
	${SRCROOT}/Stats.cpp
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
