
set(PROJECT_NAME Blizzard)

set(INCROOT ./Include)
set(SRCROOT ./Source)

set(DIR_SRCS 
	${SRCROOT}/Blizzard.cpp
	${INCROOT}/zIBlizzard.h
	${INCROOT}/zISC.h
	${INCROOT}/zIJi.h
)

#aux_source_directory(./Source DIR_SRCS)

set(INC_DIR
	${INCROOT}
)

include_directories(${INC_DIR})

zest_add_lib(
			${PROJECT_NAME}
			FOLDER "Titan"
			SOURCES ${DIR_SRCS}
)
