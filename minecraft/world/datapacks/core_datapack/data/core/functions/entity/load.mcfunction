
scoreboard objectives remove entity_count
scoreboard objectives add entity_count dummy ["",[""]]
scoreboard players set all entity_count 0
scoreboard players set area_effect_cloud entity_count 0
scoreboard players set armor_stand entity_count 0
scoreboard players set arrow entity_count 0
scoreboard players set axolotl entity_count 0
scoreboard players set bat entity_count 0
execute as @e run scoreboard players add all entity_count 1
execute as @e[type=minecraft:area_effect_cloud] run scoreboard players add area_effect_cloud entity_count 1
execute as @e[type=minecraft:armor_stand] run scoreboard players add armor_stand entity_count 1
execute as @e[type=minecraft:arrow] run scoreboard players add arrow entity_count 1
execute as @e[type=minecraft:axolotl] run scoreboard players add axolotl entity_count 1
execute as @e[type=minecraft:bat] run scoreboard players add bat entity_count 1
execute as @e[type=player] run scoreboard players add players entity_count 1
execute as @e[type=minecraft:pig] run scoreboard players add pig entity_count 1
