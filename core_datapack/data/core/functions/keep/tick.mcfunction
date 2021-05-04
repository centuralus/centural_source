execute as @a unless entity @s[scores={keep=-2147483648..2147483647}] run scoreboard players enable @s keep

execute if entity @p[scores={keep=1}] as @a[scores={keep=1}] run tag @s add reset_keep
execute if entity @p[scores={keep=..-1}] as @a[scores={keep=..-1}] run tag @s add reset_keep

execute if entity @p[scores={keep=2..}] as @a[scores={keep=2..}] run tag @s add reset_keep
execute if entity @p[scores={keep=2..}] as @a[scores={keep=2..}] run tag @s add keep

execute if entity @p[tag=keep] as @a[tag=keep] at @s if entity @e[distance=..2,type=!player,tag=keep] run tellraw @s [{"selector":"@e[distance=..2,type=!player,tag=keep]"}," already has been marked to keep."]
execute if entity @p[tag=keep] as @a[tag=keep] at @s run tag @e[distance=..2,type=!player] add keep

execute if entity @p[tag=keep] as @a[tag=keep] at @s run tellraw @s [{"selector":"@e[distance=..2,type=!player]"}," have been tagged to keep."]
execute if entity @p[tag=keep] as @a[tag=keep] run tag @s remove keep

execute if entity @p[tag=reset_keep] as @a[tag=reset_keep] run scoreboard players reset @s keep
execute if entity @p[tag=reset_keep] as @a[tag=reset_keep] run tag @s remove reset_keep