tag @e remove nbs_haloween
scoreboard objectives remove nbs_haloween
scoreboard objectives remove nbs_haloween_t
datapack disable "haloween"
tellraw @s ["",{"text":"[NBS] ","color":"gold","bold":"true"},{"text":"Data pack ","color":"yellow"},{"text":"haloween","color":"gold","underlined":"true"},{"text":" uninstalled successfully. You may now remove it from your data pack folder.","color":"yellow"}]