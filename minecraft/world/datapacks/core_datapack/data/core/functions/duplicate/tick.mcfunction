execute if entity @e[type=minecart] at @e[type=minecart] if block ~ ~-1 ~ minecraft:slime_block if block ~ ~ ~ minecraft:detector_rail if entity @e[type=minecraft:tnt,distance=..8] run tag @e[type=minecart] add duplicate


execute if entity @e[type=minecart] at @e[type=minecart] if block ~ ~ ~1 minecraft:honey_block if block ~ ~ ~ minecraft:detector_rail if entity @e[type=minecraft:tnt,distance=..8] run tag @e[type=minecart] add duplicate

execute if entity @e[type=minecart] at @e[type=minecart] if block ~ ~ ~-1 minecraft:honey_block if block ~ ~ ~ minecraft:detector_rail if entity @e[type=minecraft:tnt,distance=..8] run tag @e[type=minecart] add duplicate

execute if entity @e[type=minecart] at @e[type=minecart] if block ~1 ~ ~ minecraft:honey_block if block ~ ~ ~ minecraft:detector_rail if entity @e[type=minecraft:tnt,distance=..8] run tag @e[type=minecart] add duplicate

execute if entity @e[type=minecart] at @e[type=minecart] if block ~-1 ~ ~ minecraft:honey_block if block ~ ~ ~ minecraft:detector_rail if entity @e[type=minecraft:tnt,distance=..8] run tag @e[type=minecart] add duplicate

execute if entity @e[type=minecart,tag=duplicate] at @e[type=minecart,tag=duplicate] run kill @e[type=tnt,distance=..12]
execute if entity @e[type=minecart,tag=duplicate] at @e[type=minecart,tag=duplicate] run tellraw @a[distance=..12] "TNT Duplication Detected ~ If this is a mistake please report to admin for help."
execute if entity @e[type=minecart,tag=duplicate] as @e[type=minecart,tag=duplicate] run tag @s remove duplicate
