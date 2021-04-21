execute if entity @p[scores={hostile=1..}] as @a[scores={hostile=1..}] run tag @s add hostile



execute if entity @p[tag=hostile,scores={hostile_timer=1..}] as @a[tag=hostile,scores={hostile_timer=1..}] run scoreboard players set @s hostile_timer 0
execute if entity @p[tag=hostile] as @a[tag=hostile] run scoreboard players remove @s hostile_timer 2000
execute if entity @p[tag=hostile] as @a[tag=hostile] run team join hostile

execute if entity @p[tag=hostile] as @a[tag=hostile] run tag @s remove hostile

execute if entity @p[team=hostile] as @a[team=hostile] run title @s actionbar ["","Hostile Time Left",{"score":{"name":"@s","objective":"hostile_timer"}}]

execute if entity @p[scores={hostile_timer=1..},team=hostile] as @a[scores={hostile_timer=1..},team=hostile] run team join player @s

execute if entity @p[scores={hostile=1..}] as @a[scores={hostile=1..}] run scoreboard players reset @s hostile
