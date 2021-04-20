execute if entity @p[scores={hostile=1..}] as @a[scores={hostile=1..}] run tag @s add hostile


execute if entity @p[tag=hostile] as @a[tag=hostile] run scoreboard players add @s hostile_timer -2000
execute if entity @p[tag=hostile] as @a[tag=hostile] run team join hostile

execute if entity @p[tag=hostile] as @a[tag=hostile] run tag @s remove hostile



execute if entity @p[scores={hostile_timer=1..},team=hostile] as @a[scores={hostile_timer=1..},team=hostile] run team join player @s

execute if entity @p[scores={hostile=1..}] as @a[scores={hostile=1..}] run scoreboard objectives reset @s hostile
