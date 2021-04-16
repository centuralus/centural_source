execute store result score #x1 vect_x run data get entity @e[tag=start_point,limit=1] Pos[0]
execute store result score system vect_x run data get entity @e[tag=end_point,limit=1] Pos[0]
scoreboard players operation system vect_x -= #x1 vect_x

execute if score system vect_x matches ..0 run scoreboard players operation #x1 vect_x += system vect_x
execute if score system vect_x matches ..0 run scoreboard players operation system vect_x *= #-1 constant

execute store result score #y1 vect_y run data get entity @e[tag=start_point,limit=1] Pos[1]
scoreboard players add #y1 vect_y 1
execute store result score system vect_y run data get entity @e[tag=end_point,limit=1] Pos[1]
scoreboard players add system vect_y 1
scoreboard players operation system vect_y -= #y1 vect_y

execute if score system vect_y matches ..0 run scoreboard players operation #y1 vect_y += system vect_y
execute if score system vect_y matches ..0 run scoreboard players operation system vect_y *= #-1 constant

execute store result score #z1 vect_z run data get entity @e[tag=start_point,limit=1] Pos[2]
execute store result score system vect_z run data get entity @e[tag=end_point,limit=1] Pos[2]
scoreboard players operation system vect_z -= #z1 vect_z

execute if score system vect_z matches ..0 run scoreboard players operation #z1 vect_z += system vect_z
execute if score system vect_z matches ..0 run scoreboard players operation system vect_z *= #-1 constant

scoreboard players add system vect_x 1
scoreboard players add system vect_y 1
scoreboard players add system vect_z 1
summon area_effect_cloud ~ ~ ~ {Tags:["positioner"]}
execute store result entity @e[tag=positioner,limit=1] Pos[0] double 1 run scoreboard players get #x1 vect_x
execute store result entity @e[tag=positioner,limit=1] Pos[1] double 1 run scoreboard players get #y1 vect_y
execute store result entity @e[tag=positioner,limit=1] Pos[2] double 1 run scoreboard players get #z1 vect_z

execute at @e[tag=positioner] run function cw_edit:zprivate/save
kill @e[tag=positioner]

title @s times 10 200 10
title @s actionbar ["",{"text":"Corner: (","color":"dark_gray"},{"score":{"name":"#x1","objective":"vect_x"},"color":"yellow"},{"text":","},{"score":{"name":"#y1","objective":"vect_y"},"color":"blue"},{"text":","},{"score":{"name":"#z1","objective":"vect_z"},"color":"red"},{"text":")","color":"dark_gray"},{"text":" Size: (","color":"dark_gray"},{"score":{"name":"system","objective":"vect_x"},"color":"gold"},{"text":","},{"score":{"name":"system","objective":"vect_y"},"color":"dark_blue"},{"text":","},{"score":{"name":"system","objective":"vect_z"},"color":"dark_red"},{"text":")","color":"dark_gray"}]

execute store result score #sendFeedback cw_edit run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function cw_edit:zprivate/reset_gamerules 1t

function cw_edit:zprivate/menu/sound