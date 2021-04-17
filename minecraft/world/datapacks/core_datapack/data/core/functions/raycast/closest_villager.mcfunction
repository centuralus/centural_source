execute unless entity @e[tag=closest_villager] run particle crit ~ ~ ~ 0 0 0 0 1

execute unless entity @e[tag=closest_villager] as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=1,type=villager] run tag @s add closest_villager

#execute unless entity @e[tag=clostest_villager] as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 unless entity @s[dx=0] run tag @s remove closest_villager

execute unless entity @e[tag=closest_villager] positioned ^ ^ ^1 if block ~ ~ ~ air run function core:raycast/closest_villager
