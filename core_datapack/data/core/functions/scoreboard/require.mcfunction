#Garbage Collect (This should happen on close as well and perhaps be un needed during boot.)
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"data remove storage core:scoreboard/require status","clickEvent":{"action":"suggest_command","value":"/data remove storage core:scoreboard/require status"},"color":"light_purple"}]
data remove storage core:scoreboard status

#Status Loading
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"data modify storage core:scoreboard/require status set value require","clickEvent":{"action":"suggest_command","value":"/data modify storage core:scoreboard/require status set value require"},"color":"light_purple"}]
data modify storage core:scoreboard status set value require

#### Start Required Scoreboard Files ####

#
execute store success storage core:scoreboard/require reset byte 1 run function core:scoreboard/reset
execute if data storage core:scoreboard/require {reset:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/scoreboard/reset","color":"white"}]
execute if data storage core:scoreboard/require {reset:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:scoreboard/reset","clickEvent":{"action":"suggest_command","value":"/function core:scoreboard/reset"},"color":"light_purple"}]

#
execute store success storage core:scoreboard/require load byte 1 run function core:scoreboard/load
execute if data storage core:scoreboard/require {load:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/scoreboard/load","color":"red"}]
execute if data storage core:scoreboard/require {load:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:scoreboard/load","clickEvent":{"action":"suggest_command","value":"/function core:scoreboard/reset"},"color":"light_purple"}]

#
execute store success storage core:scoreboard/require tick byte 1 run function core:scoreboard/tick
execute if data storage core:scoreboard/require {tick:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/scoreboard/tick","color":"white"}]
execute if data storage core:scoreboard/require {tick:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:scoreboard/tick","clickEvent":{"action":"suggest_command","value":"/function core:scoreboard/reset"},"color":"light_purple"}]

#### End Required Scoreboard Files ###

#Status Loading
execute unless data storage core:scoreboard/require {reset:1b,load:1b,tick:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing required files to run core/scoreboard","color":"red"}]
execute if data storage core:scoreboard/require {reset:1b,load:1b,tick:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ LOAD ] ","color":"green"},{"text":"data modify storage core:scoreboard status set value load","clickEvent":{"action":"suggest_command","value":"/data modify storage core:scoreboard status set value load"},"color":"light_purple"}]
execute if data storage core:scoreboard/require {reset:1b,load:1b,tick:1b} run data modify storage core:scoreboard status set value load
