execute as @s run function core:role/explorer/locate/bastion_remnant
execute as @s run function core:role/explorer/locate/buried_treasure
execute as @s run function core:role/explorer/locate/desert_pyramid

execute if entity @s[scores={locate=1..}] run scoreboard players reset @s locate
