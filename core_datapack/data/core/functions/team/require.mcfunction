#Garbage Collect (This should happen on close as well and perhaps be un needed during boot.)
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"data remove storage core:team/require status","clickEvent":{"action":"suggest_command","value":"/data remove storage core:team/require status"},"color":"light_purple"}]
data remove storage core:team status

#Status Loading
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"data modify storage core:team/require status set value require","clickEvent":{"action":"suggest_command","value":"/data modify storage core:team/require status set value require"},"color":"light_purple"}]
data modify storage core:team status set value require

#### Start Required team Files ####

#
execute store success storage core:team/require reset byte 1 run function core:team/reset
execute if data storage core:team/require {reset:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/team/reset","color":"white"}]
execute if data storage core:team/require {reset:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:team/reset","clickEvent":{"action":"suggest_command","value":"/function core:team/reset"},"color":"light_purple"}]

#
execute store success storage core:team/require load byte 1 run function core:team/load
execute if data storage core:team/require {load:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/team/load","color":"red"}]
execute if data storage core:team/require {load:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:team/load","clickEvent":{"action":"suggest_command","value":"/function core:team/reset"},"color":"light_purple"}]

#
execute store success storage core:team/require tick byte 1 run function core:team/tick
execute if data storage core:team/require {tick:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/team/tick","color":"white"}]
execute if data storage core:team/require {tick:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:team/tick","clickEvent":{"action":"suggest_command","value":"/function core:team/reset"},"color":"light_purple"}]

#Add Builder
execute store success storage core:team/require add_builder byte 1 run function core:team/add/builder
execute if data storage core:team/require {add_builder:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/team/add/builder","color":"white"}]
execute if data storage core:team/require {add_builder:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:team/add/builder","clickEvent":{"action":"suggest_command","value":"/function core:team/add/builder"},"color":"light_purple"}]

#Add Explorer Team
execute store success storage core:team/require add_explorer byte 1 run function core:team/add/explorer
execute if data storage core:team/require {add_explorer:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/team/add/explorer","color":"white"}]
execute if data storage core:team/require {add_explorer:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:team/add/explorer","clickEvent":{"action":"suggest_command","value":"/function core:team/add/explorer"},"color":"light_purple"}]


#Add Helper Team
execute store success storage core:team/require add_helper byte 1 run function core:team/add/helper
execute if data storage core:team/require {add_helper:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/team/add/helper","color":"white"}]
execute if data storage core:team/require {add_helper:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:team/add/helper","clickEvent":{"action":"suggest_command","value":"/function core:team/add/helper"},"color":"light_purple"}]

#Add Player Team
execute store success storage core:team/require add_player byte 1 run function core:team/add/player
execute if data storage core:team/require {add_player:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/team/add/player","color":"white"}]
execute if data storage core:team/require {add_player:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:team/add/player","clickEvent":{"action":"suggest_command","value":"/function core:team/add/player"},"color":"light_purple"}]

#Add Hostile Team
execute store success storage core:team/require add_hostile byte 1 run function core:team/add/hostile
execute if data storage core:team/require {add_hostile:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/team/add/hostile","color":"white"}]
execute if data storage core:team/require {add_hostile:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:team/add/hostile","clickEvent":{"action":"suggest_command","value":"/function core:team/add/hostile"},"color":"light_purple"}]


#Add Away Team
execute store success storage core:team/require add_away byte 1 run function core:team/add/away
execute if data storage core:team/require {add_away:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/team/add/away","color":"white"}]
execute if data storage core:team/require {add_away:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:team/add/away","clickEvent":{"action":"suggest_command","value":"/function core:team/add/away"},"color":"light_purple"}]

#### End Required team Files ###

#Status Loading
execute unless data storage core:team/require {reset:1b,load:1b,tick:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing required files to run core/team","color":"red"}]
execute if data storage core:team/require {reset:1b,load:1b,tick:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ LOAD ] ","color":"green"},{"text":"data modify storage core:team status set value load","clickEvent":{"action":"suggest_command","value":"/data modify storage core:team status set value load"},"color":"light_purple"}]
execute if data storage core:team/require {reset:1b,load:1b,tick:1b} run data modify storage core:team status set value load
