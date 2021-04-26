execute as @a unless entity @s[scores={ender_chest=-2147483648..2147483647}] run scoreboard players enable @s ender_chest

execute if entity @p[scores={ender_chest=1}] as @a[scores={ender_chest=1}] if entity @s[nbt={recipeBook:{recipes:["minecraft:ender_chest"]}}] run tag @s add drop_ender_chest

execute if entity @p[scores={ender_chest=1}] as @a[scores={ender_chest=1}] unless entity @s[nbt={recipeBook:{recipes:["minecraft:ender_chest"]}}] run tellraw @s {"text":"You must have crafted atleast one ender chest to use this feature","color":"yellow"}

execute if entity @p[tag=drop_ender_chest] as @a[tag=drop_ender_chest] at @s run summon armor_stand ~ ~ ~ {Tags:["ender_chest"],Marker:1b,Invisible:1b,NoGravity:1b}
execute if entity @p[tag=drop_ender_chest] as @a[tag=drop_ender_chest] at @s run setblock ~ ~ ~ ender_chest
execute if entity @p[tag=drop_ender_chest] as @a[tag=drop_ender_chest] at @s run scoreboard players add @s echest_usage 1

execute if entity @p[tag=drop_ender_chest] as @a[tag=drop_ender_chest] run tag @s remove drop_ender_chest


execute if entity @e[tag=ender_chest,type=armor_stand] as @e[tag=ender_chest,type=armor_stand] at @s unless entity @p[distance=..2] run fill ~ ~ ~ ~ ~ ~ air replace ender_chest 

execute if entity @e[tag=ender_chest,type=armor_stand] as @e[tag=ender_chest,type=armor_stand] at @s if block ~ ~ ~ air run kill @s[type=item,distance=..1]

execute if entity @e[tag=ender_chest,type=armor_stand] as @e[tag=ender_chest,type=armor_stand] at @s unless block ~ ~ ~ ender_chest run kill @s[tag=ender_chest,type=armor_stand]



execute if entity @p[scores={ender_chest=1..}] as @a[scores={ender_chest=1..}] run scoreboard players reset @s ender_chest
