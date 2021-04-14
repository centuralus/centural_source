#particle crit ~ ~ ~ 0 0 0 0 1

#execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0,type=!player] run effect give @s glowing 1 1 true

#execute as @e[dx=0] positioned ~-0.99 ~-0.99 ~-0.99 unless entity @s[dx=0] run effect clear @s glowing

#execute positioned ^ ^ ^1 if block ~ ~ ~ air run function core:raycast/tick