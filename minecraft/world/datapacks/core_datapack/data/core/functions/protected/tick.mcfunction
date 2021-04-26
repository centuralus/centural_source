
# Enabled Trigger If Protected Not Enabled
#execute if entity @p[tag=protector] as @a[tag=protector] unless entity @s[scores={builder_mode=-2147483648..2147483647}] unless score @s protect_count < @s max_protect run scoreboard players enable @s protect
execute if entity @p[team=builder] as @a[team=builder] unless entity @s[scores={builder_mode=-2147483648..2147483647}] run scoreboard players enable @s builder_mode

# Trigger 
execute if entity @p[team=builder,scores={builder_mode=1}] as @a[team=builder,scores={builder_mode=1}] run tellraw @s "Marking closest region protected"
execute if entity @p[team=builder,scores={builder_mode=1}] as @a[team=builder,scores={builder_mode=1}] run tag @s add mark_protected


#execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] at @s if entity @e[tag=protected,distance=..48] run tellraw @s "This area is already protected."
#execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] at @s if entity @e[tag=protected,distance=..48] run tag @s remove mark_protected

execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] store result score @s mark_protected_x run data get entity @s Pos[0]
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] store result score @s mark_protected_y run data get entity @s Pos[1]
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] store result score @s mark_protected_z run data get entity @s Pos[2]

#Start Operations
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players set fourty_eight numbers 48
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players set zero numbers 0
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players set twenty_three numbers 23
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players operation @s mark_protected_x /= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players operation @s mark_protected_y /= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players operation @s mark_protected_z /= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players operation @s mark_protected_x *= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players operation @s mark_protected_y *= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players operation @s mark_protected_z *= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players operation @s mark_protected_x += twenty_three numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players operation @s mark_protected_y += twenty_three numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard players operation @s mark_protected_z += twenty_three numbers
#End Operations

#TODO Remove the wait... was told not needed so lets try it without!
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["protected","target"],Age:-2147483648,Duration:-1,WaitTime:-2147483648,NoGravity:1b}

execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run scoreboard objectives add temp_wait_x
execute if entity @p[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=!store_x,tag=!store_y,tag=!store_z] run tag @s add store_x
execute if entity @p[tag=store_x,team=builder] as @a[tag=store_x,team=builder] at @s store success score @s temp_wait_x store result entity @e[tag=target,tag=protected,limit=1,distance=..48,sort=nearest] Pos[0] double 1 run scoreboard players get @s mark_protected_x

execute if entity @p[tag=mark_protected,team=builder,tag=store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=store_x,tag=!store_y,tag=!store_z] run scoreboard objectives add temp_wait_y
execute if entity @p[tag=mark_protected,team=builder,tag=store_x,tag=!store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=store_x,tag=!store_y,tag=!store_z] run tag @s add store_y
execute if entity @p[tag=store_y,team=builder] as @a[tag=store_y,team=builder] at @s store success score @s temp_wait_y store result entity @e[tag=target,tag=protected,limit=1,distance=..48,sort=nearest] Pos[1] double 1 run scoreboard players get @s mark_protected_y

execute if entity @p[tag=mark_protected,team=builder,tag=store_x,tag=store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=store_x,tag=store_y,tag=!store_z] run scoreboard objectives add temp_wait_z
execute if entity @p[tag=mark_protected,team=builder,tag=store_x,tag=store_y,tag=!store_z] as @a[tag=mark_protected,team=builder,tag=store_x,tag=store_y,tag=!store_z] run tag @s add store_z
execute if entity @p[tag=store_z,team=builder] as @a[tag=store_z,team=builder] at @s store success score @s temp_wait_z store result entity @e[tag=target,tag=protected,limit=1,distance=..48,sort=nearest] Pos[2] double 1 run scoreboard players get @s mark_protected_z

execute if entity @p[scores={temp_wait_x=1..},team=builder] as @a[scores={temp_wait_x=1..},team=builder] run tag @s remove store_x

execute if entity @p[scores={temp_wait_y=1..},team=builder] as @a[scores={temp_wait_y=1..},team=builder] run tag @s remove store_y

execute if entity @p[scores={temp_wait_z=1..},team=builder] as @a[scores={temp_wait_z=1..},team=builder] run tag @s remove store_z


execute if entity @p[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=mark_protected,team=builder] as @a[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=mark_protected,team=builder] at @s at @e[tag=target,tag=protected,limit=1] if entity @e[tag=protected,tag=!target,distance=..1] run tellraw @s "There is already a builder zone in this region. Overriding is current default."

execute if entity @p[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=mark_protected,team=builder] as @a[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=mark_protected,team=builder] at @s at @e[tag=target,tag=protected,distance=..48,limit=1] if entity @e[tag=protected,tag=!target,distance=..1] run kill @e[tag=protected,tag=!target,distance=..1]

execute if entity @p[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=mark_protected,team=builder] as @a[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=mark_protected,team=builder] at @s at @e[tag=target,tag=protected,distance=..48,limit=1] run tag @e[tag=target,tag=protected,distance=..48,limit=1] remove target

#execute if entity @p[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=mark_protected,team=builder] as @a[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=mark_protected,team=builder] run tellraw @s "Removing mark_protected"

execute if entity @p[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=mark_protected,team=builder] as @a[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=mark_protected,team=builder] run tag @s remove mark_protected


execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s run particle minecraft:barrier ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]



execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s run particle minecraft:barrier ~-23 ~-23 ~-23 0 0 0 1 1 force @a[distance=..64]
execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s run particle minecraft:barrier ~-23 ~23 ~-23 0 0 0 1 1 force @a[distance=..64]

execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s run particle minecraft:barrier ~23 ~-23 ~-23 0 0 0 1 1 force @a[distance=..64]
execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s run particle minecraft:barrier ~23 ~23 ~-23 0 0 0 1 1 force @a[distance=..64]

execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s run particle minecraft:barrier ~-23 ~-23 ~23 0 0 0 1 1 force @a[distance=..64]
execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s run particle minecraft:barrier ~-23 ~23 ~23 0 0 0 1 1 force @a[distance=..64]

execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s run particle minecraft:barrier ~23 ~-23 ~23 0 0 0 1 1 force @a[distance=..64]
execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s run particle minecraft:barrier ~23 ~23 ~23 0 0 0 1 1 force @a[distance=..64]


#Save Closest chunk
execute if entity @p[team=builder,scores={builder_mode=2}] as @a[team=builder,scores={builder_mode=2}] run tellraw @s "Saving closest protected"
execute if entity @p[team=builder,scores={builder_mode=2}] as @a[team=builder,scores={builder_mode=2}] run tag @s add save_protected

execute if entity @p[team=builder,tag=save_protected] as @a[team=builder,tag=save_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] unless block ~ ~ ~ structure_block[mode=save] run setblock ~ ~ ~ structure_block[mode=save]{author:"builder",posX:-24,posY:-24,posZ:-24,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"SAVE"} replace
execute if entity @p[team=builder,tag=save_protected] as @a[team=builder,tag=save_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] if block ~ ~1 ~ lectern if block ~ ~ ~ structure_block run data modify block ~ ~ ~ name set from block ~ ~1 ~ Book.tag.pages[0]
execute if entity @p[team=builder,tag=save_protected] as @a[team=builder,tag=save_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] if block ~ ~1 ~ lectern if block ~ ~ ~ structure_block run data modify block ~ ~ ~ author set from block ~ ~1 ~ Book.tag.pages[1]
execute if entity @p[team=builder,tag=save_protected] as @a[team=builder,tag=save_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] if block ~ ~1 ~ lectern if block ~ ~ ~ structure_block run data modify block ~ ~ ~ metadata set from block ~ ~1 ~ Book.tag.pages[2]
execute if entity @p[team=builder,tag=save_protected] as @a[team=builder,tag=save_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] if block ~ ~1 ~ lectern if block ~ ~ ~ structure_block run setblock ~ ~-1 ~ air
execute if entity @p[team=builder,tag=save_protected] as @a[team=builder,tag=save_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] if block ~ ~1 ~ lectern if block ~ ~ ~ structure_block run setblock ~ ~-1 ~ redstone_block
execute if entity @p[team=builder,tag=save_protected] as @a[team=builder,tag=save_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] unless block ~ ~1 ~ lectern run setblock ~ ~1 ~ lectern[has_book=true]{Book:{id:"minecraft:writable_book",Count:1b,tag:{save:1b,pages:["ign:structure_name","author (Please write your name here)","metadata (Details about your building should go here)"]}}} replace


execute if entity @p[team=builder,tag=save_protected] as @a[team=builder,tag=save_protected] run tellraw @s "The Title of the Book determines the Structure Block Save Name. Please use lowercase snake case such as in_game_name_here:structure_information_name_here"


execute if entity @p[team=builder,tag=save_protected] as @a[team=builder,tag=save_protected] run tag @s remove save_protected
#End Save chunk

#Load Closest chunk
execute if entity @p[team=builder,scores={builder_mode=3}] as @a[team=builder,scores={builder_mode=3}] run tellraw @s "Loading closest protected"
execute if entity @p[team=builder,scores={builder_mode=3}] as @a[team=builder,scores={builder_mode=3}] run tag @s add load_protected

execute if entity @p[team=builder,tag=load_protected] as @a[team=builder,tag=load_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] unless block ~ ~ ~ structure_block[mode=load] run setblock ~ ~ ~ structure_block[mode=load]{author:"builder",posX:-24,posY:-24,posZ:-24,sizeX:48,sizeY:48,sizeZ:48,rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
execute if entity @p[team=builder,tag=load_protected] as @a[team=builder,tag=load_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] if block ~ ~1 ~ lectern if block ~ ~ ~ structure_block run data modify block ~ ~ ~ name set from block ~ ~1 ~ Book.tag.pages[0]
execute if entity @p[team=builder,tag=load_protected] as @a[team=builder,tag=load_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] if block ~ ~1 ~ lectern if block ~ ~ ~ structure_block run setblock ~ ~-1 ~ air
execute if entity @p[team=builder,tag=load_protected] as @a[team=builder,tag=load_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] if block ~ ~1 ~ lectern if block ~ ~ ~ structure_block run tag @e[type=area_effect_cloud,tag=protected,limit=1,distance=..48,sort=nearest] add target
execute if entity @p[team=builder,tag=load_protected] as @a[team=builder,tag=load_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] if block ~ ~1 ~ lectern if block ~ ~ ~ structure_block run setblock ~ ~-1 ~ redstone_block
execute if entity @p[team=builder,tag=load_protected] as @a[team=builder,tag=load_protected] at @s at @e[tag=protected,tag=target,limit=1,sort=nearest,distance=..48] if entity @e[tag=protected,tag=!target,distance=..1] run kill @e[tag=protected,tag=!target,distance=..1]

execute if entity @p[team=builder,tag=load_protected] as @a[team=builder,tag=load_protected] at @s as @e[tag=protected,tag=target,limit=1,sort=nearest,distance=..48] run tag @s remove target
execute if entity @p[team=builder,tag=load_protected] as @a[team=builder,tag=load_protected] at @s at @e[tag=protected,limit=1,sort=nearest,distance=..48] unless block ~ ~1 ~ lectern run setblock ~ ~1 ~ lectern[has_book=true]{Book:{id:"minecraft:writable_book",Count:1b,tag:{load:1b,pages:["ign:structure_name","author (Please write your name here)",""]}}} replace




execute if entity @p[team=builder,tag=load_protected] as @a[team=builder,tag=load_protected] run tellraw @s "The Title of the Book determines the Structure Block Load Name."


execute if entity @p[team=builder,tag=load_protected] as @a[team=builder,tag=load_protected] run tag @s remove load_protected
#Load Save chunk


#Delete Closest Chunk
execute if entity @p[team=builder,scores={builder_mode=4}] as @a[team=builder,scores={builder_mode=4}] run tellraw @s "Deleting closest protected region."
execute if entity @p[team=builder,scores={builder_mode=4}] as @a[team=builder,scores={builder_mode=4}] run tag @s add delete_protected


execute if entity @p[team=builder,tag=delete_protected] as @a[team=builder,tag=delete_protected] at @s unless entity @e[tag=protected,distance=..12] run tellraw @s "You must be within 12 blocks of the ceneter of a protected region to delete it."
execute if entity @p[team=builder,tag=delete_protected] as @a[team=builder,tag=delete_protected] at @s if entity @e[tag=protected,distance=..12] as @e[tag=protected,distance=..12,type=area_effect_cloud] run kill @s[type=area_effect_cloud]
execute if entity @p[team=builder,tag=delete_protected] as @a[team=builder,tag=delete_protected] run tag @s remove delete_protected


#Delete Clostest Chunk
execute if entity @p[team=builder,scores={builder_mode=5}] as @a[team=builder,scores={builder_mode=5}] run tellraw @s "Use this to run commands easier."
execute if entity @p[team=builder,scores={builder_mode=5}] as @a[team=builder,scores={builder_mode=5}] run tag @s add builder_handbook

execute if entity @p[tag=builder_handbook] as @a[tag=builder_handbook] run give @s written_book{title:"",author:"",pages:['[{"text":"Builder Handbook\\n","color":"yellow"},{"text":"[Mark]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Mark closest 48x48x48 as protected."}]},"clickEvent":{"action":"run_command","value":"/trigger builder_mode set 1"}},{"text":"[Save]","color":"gold","hoverEvent":{"action":"show_text","contents":[{"text":"Save the current region (Be sure to modify the book, do not sign it!)"}]},"clickEvent":{"action":"run_command","value":"/trigger builder_mode set 2"}},{"text":"[Load]","color":"light_purple","hoverEvent":{"action":"show_text","contents":[{"text":"Load the closest protected region (Modify the book on the lectern to determine load name)"}]},"clickEvent":{"action":"run_command","value":"/trigger builder_mode set 3"}},{"text":"X","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"Delete the closest protected region (Within 12 blocks)"}]},"clickEvent":{"action":"run_command","value":"/trigger builder_mode set 4"}}]']} 1

execute if entity @p[tag=builder_handbook] as @a[tag=builder_handbook] run tag @s remove builder_handbook

execute if entity @p[team=builder,scores={builder_mode=1..2147483647}] as @a[team=builder,scores={builder_mode=1..2147483647}] run scoreboard players reset @s builder_mode

execute if entity @p[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},team=builder] as @a[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},team=builder] run tag @s add reset_temp_wait_x
execute if entity @p[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},team=builder] as @a[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},team=builder] run tag @s add reset_temp_wait_y
execute if entity @p[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},team=builder] as @a[scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},team=builder] run tag @s add reset_temp_wait_z

execute if entity @p[tag=reset_temp_wait_x] as @a[tag=reset_temp_wait_x] run scoreboard players reset @s temp_wait_x
execute if entity @p[tag=reset_temp_wait_x] as @a[tag=reset_temp_wait_x] run tag @s remove reset_temp_wait_x

execute if entity @p[tag=reset_temp_wait_y] as @a[tag=reset_temp_wait_y] run scoreboard players reset @s temp_wait_y
execute if entity @p[tag=reset_temp_wait_y] as @a[tag=reset_temp_wait_y] run tag @s remove reset_temp_wait_y

execute if entity @p[tag=reset_temp_wait_z] as @a[tag=reset_temp_wait_z] run scoreboard players reset @s temp_wait_z
execute if entity @p[tag=reset_temp_wait_z] as @a[tag=reset_temp_wait_z] run tag @s remove reset_temp_wait_z




#execute if entity @p[team=builder,tag=save_protected] as @a[team=builder,tag=save_protected] at @e[tag=protected,limit=1,sort=nearest,distance=..48] positioned ~-24 ~-24 ~-24 run setblock ~ ~-1 ~ redstone_block

#
execute if entity @p[team=helper] as @a[team=helper] unless entity @s[scores={helper_mode=-2147483648..2147483647}] run scoreboard players enable @s helper_mode

execute if entity @p[team=helper,scores={helper_mode=1}] as @a[team=helper,scores={helper_mode=1}] run tag @s add builder

execute if entity @p[team=helper,scores={helper_mode=1..2147483647}] as @a[team=helper,scores={helper_mode=1..2147483647}] run scoreboard players reset @s helper_mode

execute if entity @p[team=helper,tag=builder] as @a[team=helper,tag=builder] run team join builder @s
execute if entity @p[team=builder,tag=builder] as @a[team=builder,tag=builder] run tag @s remove builder
#

execute if entity @p[team=player,gamemode=adventure] as @a[team=player,gamemode=adventure] at @s unless entity @e[tag=protected,distance=..48] run tellraw @s "You have left the protected region"
execute if entity @p[team=player,gamemode=adventure] as @a[team=player,gamemode=adventure] at @s unless entity @e[tag=protected,distance=..48] run gamemode survival @s 

execute if entity @p[team=player,gamemode=survival] as @a[team=player,gamemode=survival] at @s if entity @e[tag=protected,distance=..48] run tellraw @s "You have entered the protected region"
execute if entity @p[team=player,gamemode=survival] as @a[team=player,gamemode=survival] at @s if entity @e[tag=protected,distance=..48] run gamemode adventure @s



#Mode Particles
execute if entity @e[tag=protected] as @e[tag=protected] at @s if block ~ ~ ~ minecraft:structure_block[mode=load] positioned ~ ~3 ~ run particle item minecraft:ender_pearl
execute if entity @e[tag=protected] as @e[tag=protected] at @s if block ~ ~ ~ minecraft:structure_block[mode=save] positioned ~ ~3 ~ run particle item minecraft:apple
