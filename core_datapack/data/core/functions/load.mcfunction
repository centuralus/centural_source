#Spawn
execute unless entity @e[tag=spawn,type=armor_stand]


#Spawn

#;brigadier

#Garbage Collect (This should happen on close as well and perhaps be un needed during boot.)
#execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage core:load status","clickEvent":{"action":"suggest_command","value":"/data remove storage core:load status"},"color":"light_purple"}]
data remove storage core:load status

#Status Loading
#execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ MODIFY ] ","color":"gold"},{"text":"data modify storage core:load status set value loading","clickEvent":{"action":"suggest_command","value":"/data modify storage core:load status set value loading"},"color":"light_purple"}]
data modify storage core:load status set value require

#Teardown
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REMOVE ] ","color":"red"},{"text":"data remove storage core:require require","clickEvent":{"action":"suggest_command","value":"/data remove storage core:require require"},"color":"light_purple"}]
data remove storage core:require require

#Start Setup Require
execute store success storage core:require require byte 1 run function core:require
execute if data storage core:require {require:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"function core:require required but not found.","color":"white"}]
execute if data storage core:require {require:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"function core:require","clickEvent":{"action":"suggest_command","value":"/function core:require"},"color":"light_purple"}]
#End Setup Require

#Start Setup Load
execute unless data storage core:scoreboard {status:load} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"core:scoreboard should be in load status at this point."}]
execute if data storage core:scoreboard {status:load} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ LOAD ] ","color":"green"},{"text":"function core:scoreboard/load","clickEvent":{"action":"suggest_command","value":"/function core:scoreboard/load"},"color":"light_purple"}]
execute if data storage core:scoreboard {status:load} run function core:scoreboard/load
#End Setup Load

#function load:load
#function fairy:load
#function music:death_song/load
#function music:the_great_fairy_fountain/load

#function music:to_a_waterfow/load
#function music:song_of_healing/load

#function music:as_the_world_falls_down/load

#function city:load

function core:entity/load
function core:home/load
function core:echest/load
function core:shop/load
function core:preload/load
function core:token/load
function core:operator/load
function core:player/load
function core:hostile/load
#function core:save/load
function elevator:load
function core:menu/load
function core:logout/load
function core:teleport/load
function core:return/load
function core:poll/load
function core:stat/load
function core:wild/load
function core:gamemode/load
function core:role/load
function core:dialogue/load


function core:spawn/load
#function centural:load

#Start Builder
scoreboard objectives add builder_mode trigger "Builder Mode"
#End Builder