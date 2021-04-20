execute if entity @p[team=helper] as @a[team=helper] unless entity @s[scores={player=-2147483648..2147483647}] run scoreboard players enable @s player
execute if entity @p[team=explorer] as @a[team=explorer] unless entity @s[scores={player=-2147483648..2147483647}] run scoreboard players enable @s player
execute if entity @p[team=builder] as @a[team=builder] unless entity @s[scores={player=-2147483648..2147483647}] run scoreboard players enable @s player

execute if entity @p[scores={player=1..}] as @a[scores={player=1..}] run tag @s add player
execute if entity @p[tag=player] as @a[tag=player] run team join player @s

execute if entity @p[tag=player] as @a[tag=player] run tag @s remove player

execute if entity @p[scores={player=1..}] as @a[scores={player=1..}] run scoreboard players reset @s player
