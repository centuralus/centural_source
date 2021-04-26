
execute if entity @p[tag=hostile,scores={hostile_timer=1..}] as @a[tag=hostile,scores={hostile_timer=1..}] run scoreboard players set @s hostile_timer 0
execute if entity @p[tag=hostile] as @a[tag=hostile] run scoreboard players remove @s hostile_timer 2000
execute if entity @p[tag=hostile] as @a[tag=hostile] run team join hostile

execute if entity @p[tag=hostile] as @a[tag=hostile] run tag @s remove hostile
