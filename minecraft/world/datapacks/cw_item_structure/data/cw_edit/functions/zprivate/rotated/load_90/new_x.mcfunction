execute as @e[tag=org_z,limit=1,type=area_effect_cloud,tag=loader,sort=nearest] at @s run tp @s ~-1 ~ ~
tp @s @e[tag=org_z,limit=1,type=area_effect_cloud,tag=loader,sort=nearest]

scoreboard players remove @s vect_z 1
scoreboard players operation @s vect_x = system vect_x

execute if score @s vect_z matches 1.. run function cw_edit:zprivate/rotated/load_90/move
execute if score @s vect_z matches ..0 run function cw_edit:zprivate/rotated/load_90/new_z