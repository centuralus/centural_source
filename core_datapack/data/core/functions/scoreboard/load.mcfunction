#
execute if data storage core:scoreboard {status:load} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ LOAD ] ","color":"green"},{"text":"","clickEvent":{"action":"suggest_command","value":"/trigger core set -1"}}]
execute if data storage core:scoreboard {status:load} run scoreboard objectives add core trigger [{"text":" [ TRIGGER ] ","color":"green"},{"text":"trigger core","clickEvent":{"action":"suggest_command","value":"/trigger core"},"color":"light_purple"},{"text":"delete core","clickEvent":{"action":"suggest_command","value":"/trigger core set -1"},"color":"light_purple"}]

#
execute if data storage core:scoreboard {status:load} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ LOAD ] ","color":"green"}," COMMAND TO GO HERE "]
execute if data storage core:scoreboard {status:load} run scoreboard objectives add pin trigger [{"text":" [ TRIGGER ] ","color":"green"},{"text":"trigger core","clickEvent":{"action":"suggest_command","value":"/trigger pin"},"color":"light_purple"},{"text":"delete pin","clickEvent":{"action":"suggest_command","value":"/trigger pin set -1"},"color":"light_purple"}]

#Return True if in Required Status to mark file as Required.
execute if data storage core:scoreboard {status:require}

