tag @e remove nbs_astheworld
scoreboard objectives remove nbs_astheworld
scoreboard objectives remove nbs_astheworld_t
datapack disable "as_the_world_falls_down"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":"true"},{"text":"Data pack ","color":"yellow"},{"text":"as_the_world_falls_down","color":"gold","underlined":"true"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]
