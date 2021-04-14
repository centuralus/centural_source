execute as @a unless entity @s[scores={wild=-2147483648..2147483647}] run scoreboard players enable @s wild

execute if entity @p[scores={wild=2..}] as @a[scores={wild=2..}] run tag @s add wild

execute if entity @p[tag=wild] as @a[tag=wild] in minecraft:overworld run tp @s 0 30000 0

execute if entity @p[tag=wild] as @a[tag=wild] in minecraft:overworld run spreadplayers ~ ~ 1000 3000 true @s

execute if entity @p[tag=wild] as @a[tag=wild] in minecraft:overworld run tag @s remove wild 

execute if entity @p[scores={wild=1..}] as @a[scores={wild=1..}] run scoreboard players reset @s wild
