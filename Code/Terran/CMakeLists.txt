
set(PROJECT_NAME Terran)

set(INCROOT ./Include)
set(SRCROOT ./Source)

set(DIR_SRCS 
	${INCROOT}/Terran.h
	${SRCROOT}/Terran.cpp
	${INCROOT}/AppDelegate.h
	${SRCROOT}/AppDelegate.mm
	${INCROOT}/ViewController.h
	${SRCROOT}/ViewController.mm
)

set(INC_DIR
	${INCROOT}
	../Blizzard/Include
)

include_directories(${INC_DIR})

zest_add_lib(
			${PROJECT_NAME}
			FOLDER "DeadGame"
			SOURCES ${DIR_SRCS}
)
