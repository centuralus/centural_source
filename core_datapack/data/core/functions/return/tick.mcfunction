execute as @a unless entity @s[scores={return=-2147483648..2147483647}] run scoreboard players enable @s return
execute as @a unless entity @s[scores={set_return=-2147483648..2147483647}] run scoreboard players enable @s set_return

execute if entity @p[scores={set_return=1..}] as @a[scores={set_return=1..}] run tag @s add set_return

execute if entity @p[tag=set_return] as @a[tag=set_return] run tellraw @s ["Return has been set to \n","x:",{"nbt":"Pos[0]","entity":"@s"}," y:",{"nbt":"Pos[1]","entity":"@s"}," z:",{"nbt":"Pos[2]","entity":"@s"}]

execute if entity @p[tag=set_return] as @a[tag=set_return] store result score @s return_x run data get entity @s Pos[0] 1

execute if entity @p[tag=set_return] as @a[tag=set_return] store result score @s return_y run data get entity @s Pos[1] 1

execute if entity @p[tag=set_return] as @a[tag=set_return] store result score @s return_z run data get entity @s Pos[2] 1

execute if entity @p[tag=set_return] as @a[tag=set_return] if entity @s[nbt={Dimension:"minecraft:overworld"}] run scoreboard players set @s return_dimension 1
execute if entity @p[tag=set_return] as @a[tag=set_return] if entity @s[nbt={Dimension:"minecraft:the_nether"}] run scoreboard players set @s return_dimension 2
execute if entity @p[tag=set_return] as @a[tag=set_return] if entity @s[nbt={Dimension:"minecraft:the_end"}] run scoreboard players set @s return_dimension 3
execute if entity @p[tag=set_return] as @a[tag=set_return] if entity @s[nbt={Dimension:"minecraft:creative"}] run scoreboard players set @s return_dimension 4

execute if entity @p[tag=set_return] as @a[tag=set_return] run scoreboard players reset @s set_return

execute if entity @p[tag=set_return] as @a[tag=set_return] run tag @s remove set_return

#return
execute if entity @p[scores={return=1..}] as @a[scores={return=1..}] run tag @s add return

execute if entity @p[tag=return,scores={return_dimension=1}] as @p[tag=return,scores={return_dimension=1}] in minecraft:overworld positioned 0 1 0 run setblock 0 1 0 minecraft:end_gateway{ExactTeleport:1b}
execute if entity @p[tag=return,scores={return_dimension=1}] as @p[tag=return,scores={return_dimension=1}] in minecraft:overworld positioned 0 0 0 run setblock 0 0 0 bedrock

execute if entity @p[tag=return,scores={return_dimension=1}] as @p[tag=return,scores={return_dimension=1}] in minecraft:overworld positioned 0 1 0 store result block 0 1 0 ExitPortal.X int 1 run scoreboard players get @s return_x
execute if entity @p[tag=return,scores={return_dimension=1}] as @p[tag=return,scores={return_dimension=1}] in minecraft:overworld positioned 0 1 0 store result block 0 1 0 ExitPortal.Y int 1 run scoreboard players get @s return_y
execute if entity @p[tag=return,scores={return_dimension=1}] as @p[tag=return,scores={return_dimension=1}] in minecraft:overworld positioned 0 1 0 store result block 0 1 0 ExitPortal.Z int 1 run scoreboard players get @s return_z

execute if entity @p[tag=return,scores={return_dimension=1}] as @p[tag=return,scores={return_dimension=1}] in minecraft:overworld positioned 0 1 0 positioned 0 1 0 run tp ~ ~ ~

execute in minecraft:overworld if block 0 1 0 end_gateway positioned 0 1 0 unless entity @p[distance=..2] unless entity @p[tag=return] run setblock 0 1 0 air
execute in minecraft:overworld if block 0 0 0 bedrock positioned 0 0 0 unless entity @p[distance=..2] unless entity @p[tag=return] run setblock 0 0 0 air

execute if entity @p[tag=return,scores={return_dimension=2}] as @p[tag=return,scores={return_dimension=2}] in minecraft:the_nether positioned 0 200 0 run setblock 0 200 0 minecraft:end_gateway{ExactTeleport:1b}
execute if entity @p[tag=return,scores={return_dimension=2}] as @p[tag=return,scores={return_dimension=2}] in minecraft:the_nether positioned 0 199 0 run setblock 0 199 0 bedrock

execute if entity @p[tag=return,scores={return_dimension=2}] as @p[tag=return,scores={return_dimension=2}] in minecraft:the_nether positioned 0 200 0 store result block 0 200 0 ExitPortal.X int 1 run scoreboard players get @s return_x
execute if entity @p[tag=return,scores={return_dimension=2}] as @p[tag=return,scores={return_dimension=2}] in minecraft:the_nether positioned 0 200 0 store result block 0 200 0 ExitPortal.Y int 1 run scoreboard players get @s return_y
execute if entity @p[tag=return,scores={return_dimension=2}] as @p[tag=return,scores={return_dimension=2}] in minecraft:the_nether positioned 0 200 0 store result block 0 200 0 ExitPortal.Z int 1 run scoreboard players get @s return_z

execute if entity @p[tag=return,scores={return_dimension=2}] as @p[tag=return,scores={return_dimension=2}] in minecraft:the_nether positioned 0 200 0 positioned 0 200 0 run tp ~ ~ ~

execute in minecraft:the_nether if block 0 200 0 end_gateway positioned 0 200 0 unless entity @p[distance=..2] unless entity @p[tag=return] run setblock 0 200 0 air
execute in minecraft:the_nether if block 0 199 0 bedrock positioned 0 199 0 unless entity @p[distance=..2] unless entity @p[tag=return] run setblock 0 199 0 air

execute if entity @p[tag=return,scores={return_dimension=3}] as @p[tag=return,scores={return_dimension=3}] in minecraft:the_end positioned 0 200 0 run setblock 0 200 0 minecraft:end_gateway{ExactTeleport:1b}
execute if entity @p[tag=return,scores={return_dimension=3}] as @p[tag=return,scores={return_dimension=3}] in minecraft:the_end positioned 0 199 0 run setblock 0 199 0 bedrock

execute if entity @p[tag=return,scores={return_dimension=3}] as @p[tag=return,scores={return_dimension=3}] in minecraft:the_end positioned 0 200 0 store result block 0 200 0 ExitPortal.X int 1 run scoreboard players get @s return_x
execute if entity @p[tag=return,scores={return_dimension=3}] as @p[tag=return,scores={return_dimension=3}] in minecraft:the_end positioned 0 200 0 store result block 0 200 0 ExitPortal.Y int 1 run scoreboard players get @s return_y
execute if entity @p[tag=return,scores={return_dimension=3}] as @p[tag=return,scores={return_dimension=3}] in minecraft:the_end positioned 0 200 0 store result block 0 200 0 ExitPortal.Z int 1 run scoreboard players get @s return_z

execute if entity @p[tag=return,scores={return_dimension=3}] as @p[tag=return,scores={return_dimension=3}] in minecraft:the_end positioned 0 200 0 positioned 0 200 0 run tp ~ ~ ~

execute in minecraft:the_end if block 0 200 0 end_gateway positioned 0 200 0 unless entity @p[distance=..2] unless entity @p[tag=return] run setblock 0 200 0 air
execute in minecraft:the_end if block 0 199 0 bedrock positioned 0 199 0 unless entity @p[distance=..2] unless entity @p[tag=return] run setblock 0 199 0 air
#@execute if entity @p[tag=return] as @p[tag=return] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["return"]}
#execute if entity @p[tag=return] as @p[tag=return] at @s as @e[tag=return,distance=..1,type=area_effect_cloud] run data modify entity @s Pos set value [9999.0d,90.0d,90.0d]

#execute if entity @p[tag=return] as @p[tag=return] at @s as @e[tag=return,distance=..1,type=area_effect_cloud] store result entity @s Pos[0] double 0.01 run data get storage core:return position[0] 100
#execute if entity @p[tag=return] as @p[tag=return] at @s as @e[tag=return,distance=..1,type=area_effect_cloud] store result entity @s Pos[1] double 0.01 run data get storage core:return position[1] 100
#execute if entity @p[tag=return] as @p[tag=return] at @s as @e[tag=return,distance=..1,type=area_effect_cloud] store result entity @s Pos[2] double 0.01 run data get storage core:return position[2] 100





#execute if entity @p[tag=return] as @p[tag=return] run kill @e[tag=return,type=area_effect_cloud]

execute if entity @p[tag=return] as @p[tag=return] run scoreboard players reset @s return

execute if entity @p[tag=return] as @p[tag=return] run tag @s remove return

execute if entity @p[scores={set_return=1..}] as @a[scores={set_return=1..}] run scoreboard players reset @s return

