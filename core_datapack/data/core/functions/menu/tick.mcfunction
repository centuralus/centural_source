execute as @a unless entity @s[scores={menu=-2147483648..2147483647}] run scoreboard players enable @s menu
execute as @a[team=builder] unless entity @s[scores={builder_menu=-2147483648..2147483647}] run scoreboard players enable @s builder_menu
execute as @a[team=helper] unless entity @s[scores={helper_menu=-2147483648..2147483647}] run scoreboard players enable @s helper_menu
execute as @a[team=explorer] unless entity @s[scores={explorer_menu=-2147483648..2147483647}] run scoreboard players enable @s explorer_menu

execute if entity @p[scores={menu=1..2147483647}] as @a[scores={menu=1..2147483647}] run scoreboard players reset @s menu
execute if entity @p[scores={builder_menu=1..2147483647}] as @a[scores={builder_menu=1..2147483647}] run scoreboard players reset @s builder_menu
execute if entity @p[scores={helper_menu=1..2147483647}] as @a[scores={helper_menu=1..2147483647}] run scoreboard players reset @s helper_menu
execute if entity @p[scores={explorer_menu=1..2147483647}] as @a[scores={explorer_menu=1..2147483647}] run scoreboard players reset @s explorer_menu