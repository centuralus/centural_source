execute if entity @p[tag=hub_nether] in minecraft:the_nether positioned 0 0 0 as @a[tag=hub_nether] run tp ~ 1024 ~
execute if entity @p[tag=hub_nether] in minecraft:the_nether positioned 0 0 0 as @a[tag=hub_nether] run spreadplayers ~ ~ 512 1024 under 126 true @s
execute if entity @p[tag=hub_nether] in minecraft:the_nether as @a[tag=hub_nether] run tag @s remove hub_nether

execute if entity @e[tag=hub_nether,type=minecraft:armor_stand] as @e[tag=hub_nether,type=minecraft:armor_stand] at @s run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 1 10 force @a[distance=..32]

execute if entity @e[tag=hub_nether,type=armor_stand] as @e[tag=hub_nether,type=armor_stand] at @s if entity @p[distance=..1] as @a[distance=..1] run tag @s add hub_nether

execute if entity @p[tag=hub_end] in minecraft:the_end positioned 0 0 0 as @a[tag=hub_end] if entity @s[advancements={minecraft:story/enter_the_end=true}] run tp ~ 1024 ~
execute if entity @p[tag=hub_end] in minecraft:the_end positioned 0 0 0 as @a[tag=hub_end] if entity @s[advancements={minecraft:story/enter_the_end=true}] run spreadplayers ~ ~ 512 1024 under 126 true @s
execute if entity @p[tag=hub_end] in minecraft:the_end as @a[tag=hub_end] if entity @s[advancements={minecraft:story/enter_the_end=true}] run tellraw @s {"text":"You have been teleport to The End?","color":"yellow"}
execute if entity @p[tag=hub_end] in minecraft:the_end as @a[tag=hub_end] unless entity @s[advancements={minecraft:story/enter_the_end=true}] run tellraw @s {"text":"must find The End? before you may use this feature.","color":"yellow"}
execute if entity @p[tag=hub_end] in minecraft:the_end as @a[tag=hub_end] run tag @s remove hub_end

execute if entity @e[tag=hub_end,type=minecraft:armor_stand] as @e[tag=hub_end,type=minecraft:armor_stand] at @s run particle minecraft:reverse_portal ~ ~ ~ 0 0 0 1 10 force @a[distance=..32]

execute if entity @e[tag=hub_end,type=armor_stand] as @e[tag=hub_end,type=armor_stand] at @s if entity @p[distance=..1] as @a[distance=..1] run tag @s add hub_end
