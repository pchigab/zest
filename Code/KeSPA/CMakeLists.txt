
set(PROJECT_NAME KeSPA)

set(INCROOT ./Include)
set(SRCROOT ./Source)

set(DIR_SRCS 
	${INCROOT}/KeSPA.h
	${SRCROOT}/KeSPA.cpp
)

set(INC_DIR
	${INCROOT}
	../Blizzard/Include
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
			FOLDER "Team"
			SOURCES ${DIR_SRCS}
)
