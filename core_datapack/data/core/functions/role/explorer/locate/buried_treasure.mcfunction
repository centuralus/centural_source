
execute as @a[team=explorer] unless entity @s[scores={locate=-2147483648..2147483647}] run scoreboard players enable @s locate

execute if entity @p[scores={locate=3}] as @a[scores={locate=3}] run tag @s add locate_buried_treasure

execute if entity @p[tag=locate_buried_treasure] as @p[tag=locate_buried_treasure] unless entity @p[tag=locate_buried_treasure,scores={temporary_timer=1..}] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=locate_buried_treasure,type=item] run summon item ~ -66 ~ {PickupDelay:32767,Item:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"Locate Buried Treasure"}'},explorer:1b,title:"Locate Buried Treasure",author:"explorer",generation:0,resolved:1b,pages:['{"text":"test"}']}},NoGravity:1b,Tags:["locate_buried_treasure"]}

execute if entity @e[tag=locate_buried_treasure,type=item] unless entity @p[tag=locate_buried_treasure,scores={temporary_timer=1..}] run scoreboard objectives add temporary_timer minecraft.custom:minecraft.play_time "Temporary Timer"

execute if entity @e[tag=locate_buried_treasure,type=item] if entity @p[tag=locate_buried_treasure,scores={temporary_timer=1}] as @e[tag=locate_buried_treasure,type=item] at @s run fill ~ 0 ~ ~ 0 ~ command_block{Command:"locate buried_treasure",auto:1b} replace air

execute if entity @e[tag=locate_buried_treasure,type=item] if entity @p[tag=locate_buried_treasure,scores={temporary_timer=5}] as @e[tag=locate_buried_treasure,type=item] at @s run data modify entity @s Item.tag.pages[0] set from block ~ 0 ~ LastOutput

execute if entity @e[tag=locate_buried_treasure,type=item] if entity @p[tag=locate_buried_treasure,scores={temporary_timer=6}] as @e[tag=locate_buried_treasure,type=item] at @s run data modify storage string:io queue append value {string:"",maxchars:15,ignore:'{"extra":[{"translate":"commands.locate.success","with":["buried_treasure",{"color":"green","clickEvent":{"action":"suggest_command","value":"/tp @s ',callback:{command:"function string:call",id:1},async:{iterations:10}}

execute if entity @e[tag=locate_buried_treasure,type=item] if entity @p[tag=locate_buried_treasure,scores={temporary_timer=6}] as @e[tag=locate_buried_treasure,type=item] at @s run data modify storage string:io queue[0].string set from block ~ 0 ~ LastOutput

execute if entity @e[tag=locate_buried_treasure,type=item] if entity @p[tag=locate_buried_treasure,scores={temporary_timer=6}] as @e[tag=locate_buried_treasure,type=item] at @s run tellraw @a[team=explorer] ["[#01] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]

execute if entity @e[tag=locate_buried_treasure,type=item] if entity @p[tag=locate_buried_treasure,scores={temporary_timer=6}] as @e[tag=locate_buried_treasure,type=item] at @s run function string:call

#execute unless score $callback string matches 0.. run tellraw @a ["[#18] Input: ",{"storage":"string:io","nbt":"queue[-1].string","interpret":false}]

execute if score $callback string matches 1 run function core:role/explorer/locate/buried_treasure/parse



execute if entity @e[tag=locate_buried_treasure,type=item] if entity @p[tag=locate_buried_treasure,scores={temporary_timer=10}] as @e[tag=locate_buried_treasure,type=item] at @s run fill ~ 0 ~ ~ 0 ~ air replace command_block

execute if entity @e[tag=locate_buried_treasure,type=item] if entity @p[tag=locate_buried_treasure,scores={temporary_timer=12}] as @e[tag=locate_buried_treasure,type=item] at @s run data modify entity @s PickupDelay set value 0


execute if entity @e[tag=locate_buried_treasure,type=item] if entity @p[tag=locate_buried_treasure,scores={temporary_timer=15}] if entity @p[tag=locate_buried_treasure] as @p[tag=locate_buried_treasure] at @s run tp @e[type=item,tag=locate_buried_treasure,limit=1] ~ ~ ~

execute if entity @e[tag=locate_buried_treasure,type=item] if entity @p[tag=locate_buried_treasure,scores={temporary_timer=15..}] unless entity @p[tag=locate_buried_treasure] as @e[tag=locate_buried_treasure,type=item] run kill @s[type=item]

execute if entity @p[tag=locate_buried_treasure] as @p[tag=locate_buried_treasure] if entity @s[scores={temporary_timer=15..}] run tag @s remove locate_buried_treasure

execute if entity @p[scores={temporary_timer=16..}] as @p[scores={temporary_timer=16..}] run scoreboard objectives remove temporary_timer





#/summon item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"Locate Buried Treasure"}'},explorer:1b,title:"Locate Buried Treasure",author:"explorer",generation:0,resolved:1b,pages:['{"text":"test"}']}}}