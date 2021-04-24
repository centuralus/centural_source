execute as @a unless entity @s[scores={wild=-2147483648..2147483647}] run scoreboard players enable @s wild


execute if entity @p[scores={wild=2..}] as @a[scores={wild=2..}] if entity @s[scores={wild_timer=-200..0}] run tellraw @s {"text":"Cooldown active ~ Please wait approximately 20 seconds before use","color":"yellow"}

execute if entity @p[scores={wild=2..}] as @a[scores={wild=2..}] unless entity @s[scores={wild_timer=-200..0}] run tag @s add wild

execute if entity @p[scores={wild=2..}] as @a[scores={wild=2..}] unless entity @s[scores={wild_timer=-200..0}] run scoreboard objectives add wild_timer minecraft.custom:minecraft.play_time


execute if entity @p[tag=wild] as @a[tag=wild] run scoreboard players set @s wild_timer -200

execute if entity @p[tag=wild] as @a[tag=wild] in minecraft:overworld run tp @s 0 30000 0

execute if entity @p[tag=wild] as @a[tag=wild] in minecraft:overworld run spreadplayers ~ ~ 1000 3000 true @s

execute if entity @p[tag=wild] as @a[tag=wild] in minecraft:overworld run tag @s remove wild 

execute if entity @p[scores={wild=1..}] as @a[scores={wild=1..}] run scoreboard players reset @s wild

execute if entity @p[scores={wild_timer=1..}] unless entity @p[scores={wild_timer=..0}] run scoreboard objectives remove wild_timer
