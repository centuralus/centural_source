execute if entity @e[tag=shop,type=armor_stand] at @e[tag=shop,type=armor_stand] as @a[distance=..8] unless entity @s[scores={shop=-2147483648..2147483647}] run tellraw @s ["Welcome to the shop!\n"{"text":"[ Shop ]","clickEvent":{"action":"run_command","value":"/trigger shop set 1"}},{"text":"[ Browse ]","clickEvent":{"action":"run_command","value":"/trigger shop set 2"}},{"text":" [ Sell ] ","clickEvent":{"action":"run_command","value":"/trigger shop set 3"}}]
execute if entity @e[tag=shop,type=armor_stand] at @e[tag=shop,type=armor_stand] as @a[distance=..8] unless entity @s[scores={shop=-2147483648..2147483647}] run scoreboard players enable @s shop

execute if entity @p[scores={shop=1..}] run scoreboard players reset @s shop

execute if entity @p[scores={shop=0}] unless entity @e[tag=shop,type=armor_stand,distance=..8] run scoreboard players reset @s shop

