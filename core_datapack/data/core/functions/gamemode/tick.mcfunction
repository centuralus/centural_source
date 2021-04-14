#Spectator
execute if entity @p[team=explorer] as @a[team=explorer] unless entity @s[scores={spectator=-2147483648..2147483647}] run scoreboard players enable @s spectator
execute if entity @p[team=helper] as @a[team=helper] unless entity @s[scores={spectator=-2147483648..2147483647}] run scoreboard players enable @s spectator
execute if entity @p[team=builder] as @a[team=builder] unless entity @s[scores={spectator=-2147483648..2147483647}] run scoreboard players enable @s spectator

execute if entity @p[scores={spectator=1..2147483647}] as @a[scores={spectator=1..2147483647}] run tag @s add spectator

execute if entity @p[tag=spectator] as @a[tag=spectator] if entity @s[gamemode=spectator] run tellraw @s {"text":"You are already on the spectator team","color":"yellow"}
execute if entity @p[tag=spectator] as @a[tag=spectator] unless entity @s[gamemode=spectator] run gamemode spectator @s
execute if entity @p[tag=spectator] as @a[tag=spectator] run tag @s remove spectator

execute if entity @p[scores={spectator=1..2147483647}] as @a[scores={spectator=1..2147483647}] run scoreboard players reset @s spectator
#End Spectator

#Survival
execute if entity @p[team=explorer] as @a[team=explorer] unless entity @s[scores={survival=-2147483648..2147483647}] run scoreboard players enable @s survival
execute if entity @p[team=helper] as @a[team=helper] unless entity @s[scores={survival=-2147483648..2147483647}] run scoreboard players enable @s survival
execute if entity @p[team=builder] as @a[team=builder] unless entity @s[scores={survival=-2147483648..2147483647}] run scoreboard players enable @s survival

execute if entity @p[scores={survival=1..2147483647}] as @a[scores={survival=1..2147483647}] run tag @s add survival
execute if entity @p[tag=survival] as @a[tag=survival] unless entity @s[gamemode=survival] run gamemode survival @s
execute if entity @p[tag=survival] as @a[tag=survival] run tag @s remove survival


execute if entity @p[tag=survival] as @a[tag=survival] if entity @s[gamemode=survival] run tellraw @s {"text":"You are already on the survival team","color":"yellow"}

execute if entity @p[scores={survival=1..2147483647}] as @a[scores={survival=1..2147483647}] run scoreboard players reset @s survival

execute if entity @p[team=helper] as @a[team=helper] unless entity @s[scores={creative=-2147483648..2147483647}] run scoreboard players enable @s creative
execute if entity @p[team=builder] as @a[team=builder] unless entity @s[scores={creative=-2147483648..2147483647}] run scoreboard players enable @s creative

execute if entity @p[scores={creative=1..2147483647}] as @a[scores={creative=1..2147483647}] run tag @s add creative
execute if entity @p[tag=creative] as @a[tag=creative] unless entity @s[gamemode=creative] run gamemode creative @s
execute if entity @p[tag=creative] as @a[tag=creative] run tag @s remove creative


execute if entity @p[tag=creative] as @a[tag=creative] if entity @s[gamemode=creative] run tellraw @s {"text":"You are already on the creative team","color":"yellow"}

execute if entity @p[scores={creative=1..2147483647}] as @a[scores={creative=1..2147483647}] run scoreboard players reset @s creative