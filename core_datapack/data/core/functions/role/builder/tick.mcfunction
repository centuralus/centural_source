execute if entity @s[gamemode=creative] unless entity @s[nbt={Dimension:"minecraft:creative"}] run tellraw @s {"text":"To be in creative mode as a Builder you must be in the creative deminsion","color":"yellow"}
execute if entity @s[gamemode=creative] unless entity @s[nbt={Dimension:"minecraft:creative"}] at @s in minecraft:creative run tp @s ~ ~ ~

execute if entity @s[gamemode=creative] unless entity @s[nbt={Dimension:"minecraft:creative"}] at @s in minecraft:creative if block ~ ~-1 ~ air run setblock ~ ~-1 ~ stone