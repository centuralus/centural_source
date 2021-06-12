execute unless entity @s[scores={unique=2..71}] run tag @s add reset_unique

execute if entity @s[tag=reset_unique] run function core:unique/reset

