execute if entity @p[scores={hostile=1..}] as @a[scores={hostile=1..}] run tag @s add hostile

execute if entity @p[tag=hostile] as @a[tag=hostile] run function core:hostile/tag/hostile

execute if entity @p[team=hostile] as @a[team=hostile] run function core:hostile/team/hostile

execute if entity @p[scores={hostile_timer=1..},team=hostile] as @a[scores={hostile_timer=1..},team=hostile] run team join player @s

execute if entity @p[scores={hostile=1..}] as @a[scores={hostile=1..}] run scoreboard players reset @s hostile
