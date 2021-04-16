execute as @e[tag=org_y,limit=1,type=area_effect_cloud,tag=saver,sort=nearest] at @s run tp @s ~ ~1 ~
tp @s @e[tag=org_y,limit=1,type=area_effect_cloud,tag=saver,sort=nearest]
tp @e[tag=org_z,limit=1,type=area_effect_cloud,tag=saver,sort=nearest] @s

scoreboard players remove @s vect_y 1
scoreboard players operation @s vect_z = system vect_z

execute if score @s vect_y matches 1.. run function cw_edit:zprivate/undo/move
execute if score @s vect_y matches ..0 run schedule function cw_edit:zprivate/undo/end 1t