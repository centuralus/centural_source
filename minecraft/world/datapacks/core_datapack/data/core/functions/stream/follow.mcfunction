#execute if entity @s[tag=follow,tag=update] store result score @s follow_x run data get entity @s Pos[0] 1
#execute if entity @s[tag=follow,tag=update] store result score @s follow_y run data get entity @s Pos[1] 1
#execute if entity @s[tag=follow,tag=update] store result score @s follow_z run data get entity @s Pos[2] 1
#execute if entity @s[tag=follow,tag=update] run data modify entity @e[tag=camera_hub,limit=1] Pos[0] set from entity @s Pos[0]
#execute if entity @s[tag=follow,tag=update] run data modify entity @e[tag=camera_hub,limit=1] Pos[1] set from entity @s Pos[1]
#execute if entity @s[tag=follow,tag=update] run data modify entity @e[tag=camera_hub,limit=1] Pos[2] set from entity @s Pos[2]
execute if entity @s[tag=follow,tag=update] at @s run tp @e[tag=camera_hub,limit=1] ^ ^ ^-1 ~ ~
execute if entity @s[tag=follow,tag=update] run scoreboard players reset @s camera_timer
execute if entity @s[tag=follow,tag=update] run tag @s remove update


execute if entity @p[tag=camera] at @p[tag=camera] if score @s camera_timer matches 50.. run tag @s add update


#execute if entity @p[tag=camera] at @p[tag=camera] if entity @p[distance=..32,tag=!camera] if score @s camera_timer matches 1 run tag @s add update
