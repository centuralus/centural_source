
execute if entity @p[tag=operator] as @a[tag=operator] unless entity @s[scores={clone_inventory=-2147483648..2147483647}] run scoreboard players enable @s clone_inventory

#;operator_menu

#;clone_inventory

execute if entity @p[tag=operator,scores={clone_inventory=1..}] as @a[tag=operator,scores={clone_inventory=1..}] run scoreboard players reset @s clone_inventory
