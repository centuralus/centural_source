execute as @a unless entity @s[scores={trade=-2147483648..2147483647}] run scoreboard players enable @s trade


execute if entity @p[scores={trade=1}] as @a[scores={trade=1}] run tag @s add reset_trade

#Reset Trade
execute if entity @p[tag=reset_trade] as @a[tag=reset_trade] run scoreboard players reset @s trade

execute if entity @p[tag=reset_trade] as @a[tag=reset_trade] run tag @s remove reset_trade
#End Reset trade

#;trade
