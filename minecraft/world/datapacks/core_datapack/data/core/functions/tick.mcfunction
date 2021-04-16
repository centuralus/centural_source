#Mark as active unless storage has information alread.
execute unless data storage core:tick * run data modify storage core:tick tick set value 1b

#function fairy:tick
#function music:death_song/tick
#function music:the_great_fairy_fountain/tick

#function music:to_a_waterfow/tick
#function music:song_of_healing/tick

#function music:as_the_world_falls_down/tick

#function city:tick

function elevator:tick
#function centural:tick

#
execute if entity @p[tag=!joined] as @a[tag=monitor] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.5
#


#
function core:logout/tick
function core:protected/tick
function core:menu/tick
function core:teleport/tick
function core:team/tick
function core:hub/tick
function core:return/tick
function core:poll/tick
function core:wild/tick
function core:role/tick
function core:spawn/tick
function core:dialogue/tick
function core:rotation/tick
function core:gamemode/tick
execute if entity @p[tag=raycast] as @a[tag=raycast] at @a[tag=raycast] positioned ~ ~2 ~ run function core:raycast/tick
#execute if entity @p[gamemode=adventure,team=player] at @a[gamemode=adventure,team=player] unless entity @e[tag=protected,type=armor_stand,distance=..64] run tellraw @s "You have now left the builder zone."
#execute if entity @p[gamemode=adventure,team=player] at @a[gamemode=adventure,team=player] unless entity @e[tag=protected,type=armor_stand,distance=..64] run gamemode survival @s
#


execute if entity @p[scores={restroom=1..}] at @a[scores={restroom=1..}] if entity @e[tag=toilet,distance=..1] run particle minecraft:squid_ink ~ ~ ~ 0 0 0 1 1 force @a[distance=..32]
execute if entity @p[scores={restroom=1..}] at @a[scores={restroom=1..}] run scoreboard players reset @a[scores={restroom=1..}] restroom

#Double Jump
execute as @e[scores={sneaks=1},nbt={OnGround:0b}] run effect give @s minecraft:levitation 1 1 true

execute as @e[scores={sneaks=1},nbt={OnGround:0b}] run effect give @s minecraft:slow_falling 1 1 true
scoreboard players reset @a[nbt={OnGround:1b}] sneaks
execute as @a[scores={sneaks=1}] run scoreboard players add @s sneaks 1
execute as @a store result score @s duration run data get entity @s ActiveEffects[{Id:25b}].Duration 1
execute as @a[scores={duration=..7}] run effect clear @s minecraft:levitation
execute as @a[scores={duration=..7}] run effect clear @s minecraft:slow_falling