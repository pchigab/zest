
set(INC_DIR
	../Blizzard/Include
)

set(LINK_LIBS
    Blizzard
	KT
    JinAir
)

include_directories(${INC_DIR})
link_libraries(${LINK_LIBS})

aux_add_exe(KeSPA "Team")
