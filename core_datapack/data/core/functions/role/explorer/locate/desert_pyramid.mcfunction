
execute as @a[team=explorer] unless entity @s[scores={locate=-2147483648..2147483647}] run scoreboard players enable @s locate

execute if entity @p[scores={locate=4}] as @a[scores={locate=4}] run tag @s add locate_desert_pyramid

execute if entity @p[tag=locate_desert_pyramid] as @p[tag=locate_desert_pyramid] unless entity @p[tag=locate_desert_pyramid,scores={temporary_timer=1..}] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=locate_desert_pyramid,type=item] run summon item ~ -66 ~ {PickupDelay:32767,Item:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"Locate Desert Pyramid"}'},explorer:1b,title:"Locate Desert Pyramid",author:"explorer",generation:0,resolved:1b,pages:['{"text":"test"}']}},NoGravity:1b,Tags:["locate_desert_pyramid"]}

execute if entity @e[tag=locate_desert_pyramid,type=item] unless entity @p[tag=locate_desert_pyramid,scores={temporary_timer=1..}] run scoreboard objectives add temporary_timer minecraft.custom:minecraft.play_one_minute "Temporary Timer"

execute if entity @e[tag=locate_desert_pyramid,type=item] if entity @p[tag=locate_desert_pyramid,scores={temporary_timer=1}] as @e[tag=locate_desert_pyramid,type=item] at @s run fill ~ 0 ~ ~ 0 ~ command_block{Command:"locate desert_pyramid",auto:1b} replace air

execute if entity @e[tag=locate_desert_pyramid,type=item] if entity @p[tag=locate_desert_pyramid,scores={temporary_timer=5}] as @e[tag=locate_desert_pyramid,type=item] at @s run data modify entity @s Item.tag.pages[0] set from block ~ 0 ~ LastOutput

execute if entity @e[tag=locate_desert_pyramid,type=item] if entity @p[tag=locate_desert_pyramid,scores={temporary_timer=7}] as @e[tag=locate_desert_pyramid,type=item] at @s run fill ~ 0 ~ ~ 0 ~ air replace command_block

execute if entity @e[tag=locate_desert_pyramid,type=item] if entity @p[tag=locate_desert_pyramid,scores={temporary_timer=10}] as @e[tag=locate_desert_pyramid,type=item] at @s run data modify entity @s PickupDelay set value 0


execute if entity @e[tag=locate_desert_pyramid,type=item] if entity @p[tag=locate_desert_pyramid,scores={temporary_timer=15}] if entity @p[tag=locate_desert_pyramid] as @p[tag=locate_desert_pyramid] at @s run tp @e[type=item,tag=locate_desert_pyramid,limit=1] ~ ~ ~

execute if entity @e[tag=locate_desert_pyramid,type=item] if entity @p[tag=locate_desert_pyramid,scores={temporary_timer=15..}] unless entity @p[tag=locate_desert_pyramid] as @e[tag=locate_desert_pyramid,type=item] run kill @s[type=item]

execute if entity @p[tag=locate_desert_pyramid] as @p[tag=locate_desert_pyramid] if entity @s[scores={temporary_timer=15..}] run tag @s remove locate_desert_pyramid

execute if entity @p[scores={temporary_timer=16..}] as @p[scores={temporary_timer=16..}] run scoreboard objectives remove temporary_timer





#/summon item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"Locate Buried Treasure"}'},explorer:1b,title:"Locate Buried Treasure",author:"explorer",generation:0,resolved:1b,pages:['{"text":"test"}']}}}