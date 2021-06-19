execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players set @s temp_wait_x -1
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players set @s temp_wait_y -1
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players set @s temp_wait_z -1

execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store result storage protected mark_protected_x float 1 run data get entity @s Pos[0]
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store result storage protected mark_protected_y float 1 run data get entity @s Pos[1]
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store result storage protected mark_protected_z float 1 run data get entity @s Pos[2]
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard objectives add numbers dummy
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard objectives add mark_protected_x dummy
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard objectives add mark_protected_y dummy
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard objectives add mark_protected_z dummy
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store result score @s mark_protected_x run data get storage protected mark_protected_x
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store result score @s mark_protected_y run data get storage protected mark_protected_y
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store result score @s mark_protected_z run data get storage protected mark_protected_z
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players set fourty_eight numbers 48
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players set zero numbers 0
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players set twenty_three numbers 23
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players operation @s mark_protected_x /= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players operation @s mark_protected_y /= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players operation @s mark_protected_z /= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players operation @s mark_protected_x *= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players operation @s mark_protected_y *= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players operation @s mark_protected_z *= fourty_eight numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players operation @s mark_protected_x += twenty_three numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players operation @s mark_protected_y += twenty_three numbers
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run scoreboard players operation @s mark_protected_z += twenty_three numbers

execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] if score @s mark_protected_y = zero numbers run scoreboard players set @s mark_protected_y 1

#execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run setblock 0 -1024 0 end_gateway{ExitPortal:{X:0,Y:-1024,Z:0}} replace

execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] positioned 0 -1023 0 run summon area_effect_cloud ~ ~ ~ {Tags:["protected","loading"],WaitTime:32767,Age:-32768,NoGravity:1b,Radius:96f}
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store success score @s temp_wait_x store result entity @e[tag=protected,tag=loading,limit=1] Pos[0] double 1 run scoreboard players get @s mark_protected_x
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store success score @s temp_wait_z store result entity @e[tag=protected,tag=loading,limit=1] Pos[2] double 1 run scoreboard players get @s mark_protected_z
execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store success score @s temp_wait_y store result entity @e[tag=protected,tag=loading,limit=1] Pos[1] double 1 run scoreboard players get @s mark_protected_y
execute if entity @p[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}] as @a[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}] run tag @e[tag=protected,tag=loading] remove loading


#execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store success score @s temp_wait_x store result block 0 -1024 0 ExitPortal.X int 1 run scoreboard players get @s mark_protected_x
#execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store success score @s temp_wait_y store result block 0 -1024 0 ExitPortal.Y int 1 run scoreboard players get @s mark_protected_y
#execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] store success score @s temp_wait_z store result block 0 -1024 0 ExitPortal.Z int 1 run scoreboard players get @s mark_protected_z

execute if entity @p[tag=mark_protected,team=builder,tag=!first_run] as @a[tag=mark_protected,team=builder,tag=!first_run] run tag @s add first_run

#execute if entity @p[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}] as @a[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}]
#execute if entity @p[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}] as @a[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}] run summon armor_stand 0 -1023.5 0 {Tags:["protected"],Marker:1b,Invisible:1b,NoGravity:1b}

execute if entity @p[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}] as @a[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}] run scoreboard objectives remove numbers





execute if entity @p[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}] as @a[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}] run tag @s remove first_run

execute if entity @p[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}] as @a[tag=mark_protected,team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..}] run tag @s remove mark_protected

execute if entity @p[team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=!mark_protected] as @a[team=builder,scores={temp_wait_x=1..,temp_wait_y=1..,temp_wait_z=1..},tag=!mark_protected] run scoreboard players set @s temp_wait_x -1

execute if entity @p[team=builder,scores={temp_wait_x=-1,temp_wait_y=1..,temp_wait_z=1..},tag=!mark_protected] as @a[team=builder,scores={temp_wait_x=-1,temp_wait_y=1..,temp_wait_z=1..},tag=!mark_protected] run scoreboard players set @s temp_wait_y -1

execute if entity @p[team=builder,scores={temp_wait_x=-1,temp_wait_y=-1,temp_wait_z=1..},tag=!mark_protected] as @a[team=builder,scores={temp_wait_x=-1,temp_wait_y=-1,temp_wait_z=1..},tag=!mark_protected] run scoreboard players set @s temp_wait_z -1


# start Monitor Script
execute if entity @p[tag=monitor] as @a[tag=monitor] if entity @p[tag=!great] at @s run playsound minecraft:block.amethyst_block.place master @s ~ ~ ~ 1 2

execute if entity @p[tag=monitor] as @a[tag=monitor] if entity @p[tag=!great] run tellraw @s "You should great the new player/returning player then use the manual /tag @a add great"

# end Monitor Script


#execute unless entity @p[tag=mark_protected,team=builder] if block 0 -1024 0 end_gateway run setblock 0 -1024 0 air


#
#execute if entity @e[tag=protected,type=armor_stand] as @e[tag=protected,type=armor_stand] at @s align x align y align z positioned ~-24 ~-24 ~-24 if entity @p[dx=48,dy=48,dz=48,gamemode=!adventure,team=player] as @a[dx=48,dy=48,dz=48,gamemode=!adventure,team=player] run tellraw @s "You have just entered a protected region"

execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s if entity @p[distance=..96,gamemode=!adventure,team=player] as @a[distance=..96,gamemode=!adventure,team=player] run tellraw @s "You have just entered a protected region"

execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s if entity @p[distance=..96,gamemode=!adventure,team=player] as @a[distance=..96,gamemode=!adventure,team=player] run gamemode adventure @s

#
#execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s align x align y align z positioned ~-24 ~-24 ~-24 if entity @p[dx=48,dy=48,dz=48,gamemode=!adventure,team=player] as @a[dx=48,dy=48,dz=48,gamemode=!adventure,team=player] run gamemode adventure @s

#
execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s align x align y align z positioned ~-24 ~-24 ~-24 run particle minecraft:barrier ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]
#
execute if entity @e[tag=protected,type=area_effect_cloud] as @e[tag=protected,type=area_effect_cloud] at @s align x align y align z positioned ~-24 ~24 ~-24 run particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]

#
#execute if entity @e[tag=protected,type=armor_stand] as @e[tag=protected,type=armor_stand] at @s align x align y align z positioned ~47.5 ~.5 ~47.5 run particle minecraft:barrier ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]
#
#execute if entity @e[tag=protected,type=armor_stand] as @e[tag=protected,type=armor_stand] at @s align x align y align z positioned ~47.5 ~48.5 ~47.5 run particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]

#
#execute if entity @e[tag=protected,type=armor_stand] as @e[tag=protected,type=armor_stand] at @s align x align y align z positioned ~47.5 ~.5 ~.5 run particle minecraft:barrier ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]
#
#execute if entity @e[tag=protected,type=armor_stand] as @e[tag=protected,type=armor_stand] at @s align x align y align z positioned ~48.5 ~48.5 ~.5 run particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]

#
#execute if entity @e[tag=protected,type=armor_stand] as @e[tag=protected,type=armor_stand] at @s align x align y align z positioned ~.5 ~.5 ~.5 run particle minecraft:barrier ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]
#
#execute if entity @e[tag=protected,type=armor_stand] as @e[tag=protected,type=armor_stand] at @s align x align y align z positioned ~.5 ~48.5 ~.5 run particle minecraft:dripping_obsidian_tear ~ ~ ~ 0 0 0 1 1 force @a[distance=..64]

#
#execute if entity @e[tag=protected,type=armor_stand] as @e[tag=protected,type=armor_stand] at @s align x align y align z positioned ~-24 ~-24 ~-24 if entity @p[dx=48,dy=48,dz=48,gamemode=!adventure,team=player] as @a[dx=48,dy=48,dz=48,gamemode=!adventure,team=player] run gamemode adventure @s

execute if entity @p[gamemode=adventure,team=player] at @a[gamemode=adventure,team=player] unless entity @e[tag=protected,type=area_effect_cloud,distance=..96] run gamemode survival @s
#
