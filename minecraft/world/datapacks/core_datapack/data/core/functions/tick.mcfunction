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


#function core:token/tick
execute if entity @p[team=operator,tag=operator] as @a[team=operator,tag=operator] run function core:operator/tick
execute if entity @p run function core:player/tick
execute if entity @p run function core:hostile/tick
#function core:abduct/tick
#function core:save/tick
#function core:elevator/tick
execute if entity @p run function core:logout/tick
execute if entity @p run function core:protected/tick
function core:menu/tick
function core:preload/tick
function core:teleport/tick
function core:team/tick
#function core:hub/tick
function core:return/tick
#function core:poll/tick
function core:wild/tick
function core:role/tick
function core:spawn/tick
#function core:dialogue/tick
#function core:rotation/tick
function core:gamemode/tick
execute if entity @p[tag=raycast] as @a[tag=raycast] at @a[tag=raycast] positioned ~ ~2 ~ run function core:raycast/tick
#execute if entity @p[gamemode=adventure,team=player] at @a[gamemode=adventure,team=player] unless entity @e[tag=protected,type=armor_stand,distance=..64] run tellraw @s "You have now left the builder zone."
#execute if entity @p[gamemode=adventure,team=player] at @a[gamemode=adventure,team=player] unless entity @e[tag=protected,type=armor_stand,distance=..64] run gamemode survival @s
#
