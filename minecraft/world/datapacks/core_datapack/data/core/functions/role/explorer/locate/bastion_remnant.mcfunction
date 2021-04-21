
execute unless entity @s[scores={locate=-2147483648..2147483647}] run scoreboard players enable @s locate

execute if entity @s[scores={locate=2}] run tag @s add locate_bastion_remnant

execute if entity @s[tag=locate_bastion_remnant] unless entity @p[tag=locate_bastion_remnant,scores={temporary_timer=1..}] at @s align x align y align z positioned ~0.5 ~0.5 ~0.5 unless entity @e[tag=locate_bastion_remnant,type=item] run summon item ~ -66 ~ {PickupDelay:32767,Item:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"Locate Bastion Remnant"}'},explorer:1b,title:"Locate Bastion Remnant",author:"explorer",generation:0,resolved:1b,pages:['{"text":"test"}']}},NoGravity:1b,Tags:["locate_bastion_remnant"]}

execute if entity @e[tag=locate_bastion_remnant,type=item] unless entity @p[tag=locate_bastion_remnant,scores={temporary_timer=1..}] run scoreboard objectives add temporary_timer minecraft.custom:minecraft.play_time "Temporary Timer"

execute if entity @e[tag=locate_bastion_remnant,type=item] if entity @p[tag=locate_bastion_remnant,scores={temporary_timer=1}] as @e[tag=locate_bastion_remnant,type=item] at @s run fill ~ 0 ~ ~ 0 ~ command_block{Command:"execute in the_nether run locate bastion_remnant",auto:1b} replace air

execute if entity @e[tag=locate_bastion_remnant,type=item] if entity @p[tag=locate_bastion_remnant,scores={temporary_timer=5}] as @e[tag=locate_bastion_remnant,type=item] at @s run data modify entity @s Item.tag.pages[0] set from block ~ 0 ~ LastOutput

execute if entity @e[tag=locate_bastion_remnant,type=item] if entity @p[tag=locate_bastion_remnant,scores={temporary_timer=5}] as @e[tag=locate_bastion_remnant,type=item] at @s run data modify entity @s Item.tag.pages[0] append value "/n These are Nether Coordinates"

execute if entity @e[tag=locate_bastion_remnant,type=item] if entity @p[tag=locate_bastion_remnant,scores={temporary_timer=7}] as @e[tag=locate_bastion_remnant,type=item] at @s run fill ~ 0 ~ ~ 0 ~ air replace command_block

execute if entity @e[tag=locate_bastion_remnant,type=item] if entity @p[tag=locate_bastion_remnant,scores={temporary_timer=10}] as @e[tag=locate_bastion_remnant,type=item] at @s run data modify entity @s PickupDelay set value 0


execute if entity @e[tag=locate_bastion_remnant,type=item] if entity @p[tag=locate_bastion_remnant,scores={temporary_timer=15}] if entity @p[tag=locate_bastion_remnant] as @p[tag=locate_bastion_remnant] at @s run tp @e[type=item,tag=locate_bastion_remnant,limit=1] ~ ~ ~

execute if entity @e[tag=locate_bastion_remnant,type=item] if entity @p[tag=locate_bastion_remnant,scores={temporary_timer=15..}] unless entity @p[tag=locate_bastion_remnant] as @e[tag=locate_bastion_remnant,type=item] run kill @s[type=item]

execute if entity @p[tag=locate_bastion_remnant] as @p[tag=locate_bastion_remnant] if entity @s[scores={temporary_timer=15..}] run tag @s remove locate_bastion_remnant

execute if entity @p[scores={temporary_timer=16..}] as @p[scores={temporary_timer=16..}] run scoreboard objectives remove temporary_timer





#/summon item ~ ~ ~ {Item:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"Locate Buried Treasure"}'},explorer:1b,title:"Locate Buried Treasure",author:"explorer",generation:0,resolved:1b,pages:['{"text":"test"}']}}}
