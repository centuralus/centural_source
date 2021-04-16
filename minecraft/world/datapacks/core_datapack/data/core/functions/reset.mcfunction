#Teardown Reset
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage core:reset status","clickEvent":{"action":"suggest_command","value":"/data remove storage core:reset status"},"color":"light_purple"}]
data remove storage core:reset status

#Status Loading
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ MODIFY ] ","color":"gold"},{"text":"data modify storage core:reset status set value loading","clickEvent":{"action":"suggest_command","value":"/data modify storage core:reset status set value loading"},"color":"light_purple"}]
data modify storage core:reset status set value loading

execute if data storage core:scoreboard/reset {require:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ WARNING ] ","color":"aqua"},{"text":"There is not core:scoreboard/reset function avaiable according to the storage. Skipping...","clickEvent":{"action":"suggest_command","value":"/function core:scoreboard/reset"},"color":"light_purple"}]
execute if data storage core:scoreboard/reset {require:1b} run function core:scoreboard/reset
execute if data storage core:scoreboard/reset {require:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ RESET ] ","color":"yellow"},{"text":"function core:scoreboard/reset","clickEvent":{"action":"suggest_command","value":"/function core:scoreboard/reset"},"color":"light_purple"}]
