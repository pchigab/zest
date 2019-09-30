
set(PROJECT_NAME JinAir)

set(INCROOT ./Include)
set(SRCROOT ./Source)

set(DIR_SRCS 
	${INCROOT}/JinAir.h
	${INCROOT}/TeamMember.h
    ${INCROOT}/sOs.h
	${SRCROOT}/sOs.cpp
)

set(INC_DIR
	${INCROOT}
	../Blizzard/Include
)

include_directories(${INC_DIR})

zest_add_lib(
			${PROJECT_NAME}
			FOLDER "Team"
			SOURCES ${DIR_SRCS}
)
