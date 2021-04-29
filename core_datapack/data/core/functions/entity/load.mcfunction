
scoreboard objectives remove entity_count
scoreboard objectives add entity_count dummy ["",[""]]
scoreboard objectives setdisplay sidebar.team.white entity_count
scoreboard players set all entity_count 0
scoreboard players set area_effect_cloud entity_count 0
scoreboard players set armor_stand entity_count 0
scoreboard players set arrow entity_count 0
scoreboard players set axolotl entity_count 0

scoreboard players set bat entity_count 0
scoreboard players set bat_max entity_count 9

execute as @e run scoreboard players add all entity_count 1


execute as @e[type=player] run scoreboard players add player entity_count 1

execute as @e[type=minecraft:area_effect_cloud] run scoreboard players add area_effect_cloud entity_count 1
execute as @e[type=minecraft:armor_stand] run scoreboard players add armor_stand entity_count 1
execute as @e[type=minecraft:arrow] run scoreboard players add arrow entity_count 1
execute as @e[type=minecraft:axolotl] run scoreboard players add axolotl entity_count 1
execute as @e[type=minecraft:bat] run scoreboard players add bat entity_count 1
scoreboard players operation bat_max entity_count *= player entity_count
execute if score bat entity_count > bat_max entity_count run tellraw @a[team=operator,tag=operator] "Killing 10 bats due to over population"
execute if score bat entity_count > bat_max entity_count as @e[type=bat,sort=random,limit=10] run tag @s[type=bat] add kill
execute as @e[type=minecraft:bee] run scoreboard players add bee entity_count 1
execute as @e[type=minecraft:blaze] run scoreboard players add blaze entity_count 1
execute as @e[type=minecraft:boat] run scoreboard players add boat entity_count 1
execute as @e[type=minecraft:cat] run scoreboard players add cat entity_count 1
execute as @e[type=minecraft:cave_spider] run scoreboard players add cave_spider entity_count 1
execute as @e[type=minecraft:chest_minecart] run scoreboard players add chest_minecart entity_count 1
execute as @e[type=minecraft:chicken] run scoreboard players add chicken entity_count 1
execute as @e[type=minecraft:cod] run scoreboard players add cod entity_count 1
execute as @e[type=minecraft:command_block_minecart] run scoreboard players add command_block_minecart entity_count 1
execute as @e[type=minecraft:cow] run scoreboard players add cow entity_count 1
execute as @e[type=minecraft:creeper] run scoreboard players add creeper entity_count 1
execute as @e[type=minecraft:dolphin] run scoreboard players add dolphin entity_count 1
execute as @e[type=minecraft:donkey] run scoreboard players add donkey entity_count 1
execute as @e[type=minecraft:dragon_fireball] run scoreboard players add dragon_fireball entity_count 1
execute as @e[type=minecraft:drowned] run scoreboard players add drowned entity_count 1
execute as @e[type=minecraft:egg] run scoreboard players add egg entity_count 1
execute as @e[type=minecraft:ender_dragon] run scoreboard players add ender_dragon entity_count 1



execute as @e[type=minecraft:end_crystal] run scoreboard players add end_crystal entity_count 1


execute as @e[type=minecraft:pig] run scoreboard players add pig entity_count 1
