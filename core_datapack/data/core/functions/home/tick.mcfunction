execute as @a unless entity @s[scores={home=-2147483648..2147483647}] run scoreboard players enable @s home
execute as @a unless entity @s[scores={set_home=-2147483648..2147483647}] run scoreboard players enable @s set_home

execute if entity @p[scores={set_home=1..}] as @a[scores={set_home=1..}] run tag @s add set_home

execute if entity @p[tag=set_home] as @a[tag=set_home] run tellraw @s ["home has been set to \n","x:",{"nbt":"Pos[0]","entity":"@s"}," y:",{"nbt":"Pos[1]","entity":"@s"}," z:",{"nbt":"Pos[2]","entity":"@s"}]

execute if entity @p[tag=set_home] as @a[tag=set_home] store result score @s home_x run data get entity @s Pos[0] 1

execute if entity @p[tag=set_home] as @a[tag=set_home] store result score @s home_y run data get entity @s Pos[1] 1

execute if entity @p[tag=set_home] as @a[tag=set_home] store result score @s home_z run data get entity @s Pos[2] 1

execute if entity @p[tag=set_home] as @a[tag=set_home] if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s home_dimension 1
execute if entity @p[tag=set_home] as @a[tag=set_home] if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s home_dimension 2
execute if entity @p[tag=set_home] as @a[tag=set_home] if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s home_dimension 3
execute if entity @p[tag=set_home] as @a[tag=set_home] if entity @s[nbt={Dimension:"minecraft:creative"}] run scoreboard players set @s home_dimension 4

execute if entity @p[tag=set_home] as @a[tag=set_home] run scoreboard players reset @s set_home

execute if entity @p[tag=set_home] as @a[tag=set_home] run tag @s remove set_home

#home
execute if entity @p[scores={home=1..}] as @a[scores={home=1..}] run tag @s add home

execute if entity @p[tag=home,scores={home_dimension=1}] as @p[tag=home,scores={home_dimension=1}] in minecraft:overworld positioned 0 1 0 run setblock 0 1 0 minecraft:end_gateway{ExactTeleport:1b}
execute if entity @p[tag=home,scores={home_dimension=1}] as @p[tag=home,scores={home_dimension=1}] in minecraft:overworld positioned 0 0 0 run setblock 0 0 0 bedrock

execute if entity @p[tag=home,scores={home_dimension=1}] as @p[tag=home,scores={home_dimension=1}] in minecraft:overworld positioned 0 1 0 store result block 0 1 0 ExitPortal.X int 1 run scoreboard players get @s home_x
execute if entity @p[tag=home,scores={home_dimension=1}] as @p[tag=home,scores={home_dimension=1}] in minecraft:overworld positioned 0 1 0 store result block 0 1 0 ExitPortal.Y int 1 run scoreboard players get @s home_y
execute if entity @p[tag=home,scores={home_dimension=1}] as @p[tag=home,scores={home_dimension=1}] in minecraft:overworld positioned 0 1 0 store result block 0 1 0 ExitPortal.Z int 1 run scoreboard players get @s home_z

execute if entity @p[tag=home,scores={home_dimension=1}] as @p[tag=home,scores={home_dimension=1}] in minecraft:overworld positioned 0 1 0 positioned 0 1 0 run tp ~ ~ ~

execute in minecraft:overworld if block 0 1 0 end_gateway positioned 0 1 0 unless entity @p[distance=..2] unless entity @p[tag=home] run setblock 0 1 0 air
execute in minecraft:overworld if block 0 0 0 bedrock positioned 0 0 0 unless entity @p[distance=..2] unless entity @p[tag=home] run setblock 0 0 0 air

execute if entity @p[tag=home,scores={home_dimension=2}] as @p[tag=home,scores={home_dimension=2}] in minecraft:the_nether positioned 0 200 0 run setblock 0 200 0 minecraft:end_gateway{ExactTeleport:1b}
execute if entity @p[tag=home,scores={home_dimension=2}] as @p[tag=home,scores={home_dimension=2}] in minecraft:the_nether positioned 0 199 0 run setblock 0 199 0 bedrock

execute if entity @p[tag=home,scores={home_dimension=2}] as @p[tag=home,scores={home_dimension=2}] in minecraft:the_nether positioned 0 200 0 store result block 0 200 0 ExitPortal.X int 1 run scoreboard players get @s home_x
execute if entity @p[tag=home,scores={home_dimension=2}] as @p[tag=home,scores={home_dimension=2}] in minecraft:the_nether positioned 0 200 0 store result block 0 200 0 ExitPortal.Y int 1 run scoreboard players get @s home_y
execute if entity @p[tag=home,scores={home_dimension=2}] as @p[tag=home,scores={home_dimension=2}] in minecraft:the_nether positioned 0 200 0 store result block 0 200 0 ExitPortal.Z int 1 run scoreboard players get @s home_z

execute if entity @p[tag=home,scores={home_dimension=2}] as @p[tag=home,scores={home_dimension=2}] in minecraft:the_nether positioned 0 200 0 positioned 0 200 0 run tp ~ ~ ~

execute in minecraft:the_nether if block 0 200 0 end_gateway positioned 0 200 0 unless entity @p[distance=..2] unless entity @p[tag=home] run setblock 0 200 0 air
execute in minecraft:the_nether if block 0 199 0 bedrock positioned 0 199 0 unless entity @p[distance=..2] unless entity @p[tag=home] run setblock 0 199 0 air

execute if entity @p[tag=home,scores={home_dimension=3}] as @p[tag=home,scores={home_dimension=3}] in minecraft:the_end positioned 0 200 0 run setblock 0 200 0 minecraft:end_gateway{ExactTeleport:1b}
execute if entity @p[tag=home,scores={home_dimension=3}] as @p[tag=home,scores={home_dimension=3}] in minecraft:the_end positioned 0 199 0 run setblock 0 199 0 bedrock

execute if entity @p[tag=home,scores={home_dimension=3}] as @p[tag=home,scores={home_dimension=3}] in minecraft:the_end positioned 0 200 0 store result block 0 200 0 ExitPortal.X int 1 run scoreboard players get @s home_x
execute if entity @p[tag=home,scores={home_dimension=3}] as @p[tag=home,scores={home_dimension=3}] in minecraft:the_end positioned 0 200 0 store result block 0 200 0 ExitPortal.Y int 1 run scoreboard players get @s home_y
execute if entity @p[tag=home,scores={home_dimension=3}] as @p[tag=home,scores={home_dimension=3}] in minecraft:the_end positioned 0 200 0 store result block 0 200 0 ExitPortal.Z int 1 run scoreboard players get @s home_z

execute if entity @p[tag=home,scores={home_dimension=3}] as @p[tag=home,scores={home_dimension=3}] in minecraft:the_end positioned 0 200 0 positioned 0 200 0 run tp ~ ~ ~

execute in minecraft:the_end if block 0 200 0 end_gateway positioned 0 200 0 unless entity @p[distance=..2] unless entity @p[tag=home] run setblock 0 200 0 air
execute in minecraft:the_end if block 0 199 0 bedrock positioned 0 199 0 unless entity @p[distance=..2] unless entity @p[tag=home] run setblock 0 199 0 air
#@execute if entity @p[tag=home] as @p[tag=home] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["home"]}
#execute if entity @p[tag=home] as @p[tag=home] at @s as @e[tag=home,distance=..1,type=area_effect_cloud] run data modify entity @s Pos set value [9999.0d,90.0d,90.0d]

#execute if entity @p[tag=home] as @p[tag=home] at @s as @e[tag=home,distance=..1,type=area_effect_cloud] store result entity @s Pos[0] double 0.01 run data get storage core:home position[0] 100
#execute if entity @p[tag=home] as @p[tag=home] at @s as @e[tag=home,distance=..1,type=area_effect_cloud] store result entity @s Pos[1] double 0.01 run data get storage core:home position[1] 100
#execute if entity @p[tag=home] as @p[tag=home] at @s as @e[tag=home,distance=..1,type=area_effect_cloud] store result entity @s Pos[2] double 0.01 run data get storage core:home position[2] 100





#execute if entity @p[tag=home] as @p[tag=home] run kill @e[tag=home,type=area_effect_cloud]

execute if entity @p[tag=home] as @p[tag=home] run scoreboard players reset @s home

execute if entity @p[tag=home] as @p[tag=home] run tag @s remove home

execute if entity @p[scores={set_home=1..}] as @a[scores={set_home=1..}] run scoreboard players reset @s home

