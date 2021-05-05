execute unless entity @s[tag=send_offer_fourteen] unless entity @p[tag=received_offer_fourteen] unless entity @p[tag=receive_offer_fourteen] unless entity @e[tag=send,tag=slot_fourteen,type=villager] at @s run summon villager ~ ~1 ~ {Health:1f,NoGravity:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CustomName:'{"text":"Trade in progress","color":"blue"}',HandItems:[{},{}],HandDropChances:[1.000F,1.000F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}],Tags:["keep","send","slot","slot_fourteen"]}
execute unless entity @s[tag=send_offer_fourteen] unless entity @p[tag=received_offer_fourteen] unless entity @p[tag=receive_offer_fourteen] run item entity @e[tag=send,tag=slot_fourteen,limit=1] weapon.mainhand copy entity @s weapon.offhand
execute unless entity @s[tag=send_offer_fourteen] unless entity @p[tag=received_offer_fourteen] unless entity @p[tag=receive_offer_fourteen] run item entity @s weapon.offhand replace air
execute unless entity @s[tag=send_offer_fourteen] unless entity @p[tag=received_offer_fourteen] unless entity @p[tag=receive_offer_fourteen] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tellraw @p[distance=0] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"HandItems[0]","entity":"@e[tag=slot_fourteen,tag=send]"},"\
",{"color":"light_purple","text":"To offer an item hold the item in your left hand then Click Here.","clickEvent":{"action":"run_command","value":"/trigger trade set 14"}}]
execute unless entity @s[tag=send_offer_fourteen] unless entity @p[tag=received_offer_fourteen] unless entity @p[tag=receive_offer_fourteen] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tag @p[distance=0] add receive_offer_fourteen
execute unless entity @s[tag=send_offer_fourteen] unless entity @s[tag=received_offer_fourteen] run tag @s[tag=!receive_offer_fourteen,tag=!send_offer_fourteen] add send_offer_fourteen
execute if entity @s[tag=receive_offer_fourteen,tag=!received_offer_fourteen] unless entity @e[tag=receive,tag=slot_fourteen,type=villager] at @s run summon villager ~ ~1 ~ {Health:1f,NoGravity:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CustomName:'{"text":"Trade in progress"}',HandItems:[{},{}],HandDropChances:[1.000F,1.000F],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:999999,ShowParticles:0b}],Tags:["keep","receive","slot","slot_fourteen"]}
#execute if entity @s[tag=receive_offer_fourteen,tag=!received_offer_fourteen] run data modify storage core:trade live[14].receive set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[tag=receive_offer_fourteen,tag=!received_offer_fourteen] run item entity @e[tag=receive,tag=slot_fourteen,limit=1] weapon.mainhand copy entity @s weapon.offhand
execute if entity @s[tag=receive_offer_fourteen,tag=!received_offer_fourteen] run item entity @s weapon.offhand replace air
execute if entity @s[tag=receive_offer_fourteen,tag=!received_offer_fourteen] run tellraw @p[tag=send_offer_fourteen] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"HandItems[0]","entity":"@e[tag=slot_fourteen,tag=receive]"}," in exchange for your ",{"nbt":"HandItems[0]","entity":"@e[tag=slot_fourteen,tag=send]"},"\n",{"color":"light_purple","text":"To accept click here.","clickEvent":{"action":"run_command","value":"/trigger trade set -1"}}]
execute if entity @s[tag=receive_offer_fourteen,tag=!recieved_offer_fourteen] run scoreboard players enable @p[tag=send_offer_fourteen] trade
execute if entity @s[tag=receive_offer_fourteen,tag=!received_offer_fourteen] run tag @s add received_offer_fourteen
execute if entity @s[tag=receive_offer_fourteen,tag=received_offer_fourteen] run tag @s remove receive_offer_fourteen
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] if entity @e[tag=slot_fourteen,tag=send] if entity @e[tag=slot_fourteen,tag=receive] run item entity @s weapon.offhand copy entity @e[tag=slot_fourteen,tag=send,limit=1] weapon.mainhand
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] unless entity @e[tag=slot_fourteen,tag=receive] run tellraw @s {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] unless entity @e[tag=slot_fourteen,tag=receive] run tellraw @p[tag=send_offer_fourteen,scores={trade=-1}] {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] if entity @e[tag=slot_fourteen,tag=send] if entity @e[tag=slot_fourteen,tag=receive] run item entity @p[tag=send_offer_fourteen,scores={trade=-1}] weapon.offhand copy entity @e[tag=slot_fourteen,tag=receive,limit=1] weapon.mainhand
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] unless entity @e[tag=slot_fourteen,tag=send] run tellraw @s {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] unless entity @e[tag=slot_fourteen,tag=send] run tellraw @p[tag=send_offer_fourteen,scores={trade=-1}] {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] if entity @e[tag=slot_fourteen,tag=send] if entity @e[tag=slot_fourteen,tag=receive] at @s run tp @e[tag=slot_fourteen,tag=send,limit=1] 0 0 0
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] if entity @e[tag=slot_fourteen,tag=send] if entity @e[tag=slot_fourteen,tag=receive] at @p[tag=send_offer_fourteen,scores={trade=-1}] run tp @e[tag=slot_fourteen,tag=receive,limit=1] 0 0 0
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] if entity @e[tag=slot_fourteen,tag=send] if entity @e[tag=slot_fourteen,tag=receive] at @p[tag=send_offer_fourteen,scores={trade=-1}] run kill @e[tag=slot_fourteen,tag=receive,limit=1]
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] if entity @e[tag=slot_fourteen,tag=send] if entity @e[tag=slot_fourteen,tag=receive] at @s run kill @e[tag=slot_fourteen,tag=send,limit=1]
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] run tag @s add reset_offer_fourteen
execute if entity @p[tag=send_offer_fourteen,scores={trade=-1}] if entity @s[tag=received_offer_fourteen,scores={trade=14}] run tag @p[tag=send_offer_fourteen,scores={trade=-1}] add reset_offer_fourteen
execute if entity @p[tag=reset_offer_fourteen] as @a[tag=reset_offer_fourteen] run scoreboard players reset @s trade
execute if entity @p[tag=reset_offer_fourteen] as @a[tag=reset_offer_fourteen] run scoreboard players set @s trade_timer -1
execute if entity @p[tag=reset_offer_fourteen] as @a[tag=reset_offer_fourteen] run tag @s remove send_offer_fourteen
execute if entity @p[tag=reset_offer_fourteen] as @a[tag=reset_offer_fourteen] run tag @s remove receive_offer_fourteen
execute if entity @p[tag=reset_offer_fourteen] as @a[tag=reset_offer_fourteen] run tag @s remove received_offer_fourteen
execute if entity @p[tag=reset_offer_fourteen] as @a[tag=reset_offer_fourteen] run tag @s remove reset_offer_fourteen
