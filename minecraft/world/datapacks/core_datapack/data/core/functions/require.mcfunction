
# Start Tear Down
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ STATUS ] ","color":"gold"},{"text":"data modify storage core:require status set value teardown","clickEvent":{"action":"suggest_command","value":"/data modify storage core:require status set value teardown"},"color":"light_purple"}]
data modify storage core:require status set value teardown
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage require:load status","clickEvent":{"action":"suggest_command","value":"/data remove storage require:load status"},"color":"light_purple"}]
data remove storage core:require status
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage require:load status","clickEvent":{"action":"suggest_command","value":"/data remove storage require:load status"},"color":"light_purple"}]
data remove storage core:require scoreboard
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage require:load status","clickEvent":{"action":"suggest_command","value":"/data remove storage require:load status"},"color":"light_purple"}]
data remove storage core:require team
# End Tear Down

# Start Require
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ STATUS ] ","color":"gold"},{"text":"data modify storage require:load status set value require","clickEvent":{"action":"suggest_command","value":"/data modify storage core:load status set value require"},"color":"light_purple"}]
data modify storage core:require status set value require

#Start Scoreboard
#Teardown Pervious Scoreboard
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage core:require scoreboard","clickEvent":{"action":"suggest_command","value":"data remove storage core:require scoreboard"},"color":"light_purple"}]
data remove storage core:require scoreboard

execute store success storage core:require scoreboard byte 1 run function core:scoreboard/require
execute if data storage core:require {scoreboard:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/scoreboard/require","color":"white"}]

execute if data storage core:require {scoreboard:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:scoreboard/require","clickEvent":{"action":"suggest_command","value":"/function core:scoreboard/require"},"color":"light_purple"}]
#End scoreboard
#Start Team
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage core:require team","clickEvent":{"action":"suggest_command","value":"data remove storage core:require team"},"color":"light_purple"}]
data remove storage core:require team

execute store success storage core:require team byte 1 run function core:team/require
execute if data storage core:require {team:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/team/require","color":"white"}]

execute if data storage core:require {team:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:team/require","clickEvent":{"action":"suggest_command","value":"/function core:team/require"},"color":"light_purple"}]
#End team

# End Require

#####


#Teardown Previous Plugin
#execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage core:require plugin","clickEvent":{"action":"suggest_command","value":"data remove storage core:require plugin"},"color":"light_purple"}]
#data remove storage core:require plugin

#execute store success storage core:require plugin byte 1 run function core:plugin/require
#execute if data storage core:require {plugin:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Function File core/functions/plugin/require","color":"white"}]

#execute if data storage core:require {plugin:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:plugin/require","clickEvent":{"action":"suggest_command","value":"/function core:plugin/require"},"color":"light_purple"}]
