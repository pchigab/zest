
set(PROJECT_NAME KeSPA)

set(INCROOT ${CMAKE_ROOT_DIR}/include/KeSPA)
set(SRCROOT ${CMAKE_ROOT_DIR}/src/KeSPA)

set(DIR_SRCS 
	${INCROOT}/KeSPA.h
	${SRCROOT}/KeSPA.cpp
)

set(INC_DIR
	${INCROOT}
	${CMAKE_ROOT_DIR}/include
)

set(LINK_LIBS
    Blizzard
	KT
    JinAir
)

include_directories(${INC_DIR})
link_libraries(${LINK_LIBS})

zest_add_exe(
			${PROJECT_NAME}
			FOLDER "DeadGame"
			SOURCES ${DIR_SRCS}
)
