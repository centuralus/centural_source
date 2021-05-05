execute unless entity @s[tag=send_offer_twenty] unless entity @p[tag=received_offer_twenty] unless entity @p[tag=receive_offer_twenty] unless entity @e[tag=send,tag=slot_twenty,type=villager] at @s anchored eyes positioned ^ ^-1 ^1 run summon villager ~ ~ ~ {Invulnerable:1b,Health:1f,NoGravity:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CustomName:'{"text":"Trade in progress","color":"blue"}',HandItems:[{},{}],HandDropChances:[1.000F,1.000F],Tags:["keep","send","slot","slot_twenty"]}
execute unless entity @s[tag=send_offer_twenty] unless entity @p[tag=received_offer_twenty] unless entity @p[tag=receive_offer_twenty] run item entity @e[tag=send,tag=slot_twenty,limit=1] weapon.mainhand copy entity @s weapon.offhand
execute unless entity @s[tag=send_offer_twenty] unless entity @p[tag=received_offer_twenty] unless entity @p[tag=receive_offer_twenty] run item entity @s weapon.offhand replace air
execute unless entity @s[tag=send_offer_twenty] unless entity @p[tag=received_offer_twenty] unless entity @p[tag=receive_offer_twenty] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tellraw @p[distance=0] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"HandItems[0]","entity":"@e[tag=slot_twenty,tag=send]"},"\n",{"color":"light_purple","text":"To offer an item hold the item in your left hand then Click Here.","clickEvent":{"action":"run_command","value":"/trigger trade set 20"}}]
execute unless entity @s[tag=send_offer_twenty] unless entity @p[tag=received_offer_twenty] unless entity @p[tag=receive_offer_twenty] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tag @p[distance=0] add receive_offer_twenty
execute unless entity @s[tag=send_offer_twenty] unless entity @s[tag=received_offer_twenty] run tag @s[tag=!receive_offer_twenty,tag=!send_offer_twenty] add send_offer_twenty
execute if entity @s[tag=receive_offer_twenty,tag=!received_offer_twenty] unless entity @e[tag=receive,tag=slot_twenty,type=villager] at @s anchored eyes positioned ^ ^-1 ^1 run summon villager ~ ~ ~ {Invulnerable:1b,Health:1f,NoGravity:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CustomName:'{"text":"Trade in progress"}',HandItems:[{},{}],HandDropChances:[1.000F,1.000F],Tags:["keep","receive","slot","slot_twenty"]}
#execute if entity @s[tag=receive_offer_twenty,tag=!received_offer_twenty] run data modify storage core:trade live[20].receive set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[tag=receive_offer_twenty,tag=!received_offer_twenty] run item entity @e[tag=receive,tag=slot_twenty,limit=1] weapon.mainhand copy entity @s weapon.offhand
execute if entity @s[tag=receive_offer_twenty,tag=!received_offer_twenty] run item entity @s weapon.offhand replace air
execute if entity @s[tag=receive_offer_twenty,tag=!received_offer_twenty] run tellraw @p[tag=send_offer_twenty] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"HandItems[0]","entity":"@e[tag=slot_twenty,tag=receive]"}," in exchange for your ",{"nbt":"HandItems[0]","entity":"@e[tag=slot_twenty,tag=send]"},"\n",{"color":"light_purple","text":"To accept click here.","clickEvent":{"action":"run_command","value":"/trigger trade set -1"}}]
execute if entity @s[tag=receive_offer_twenty,tag=!recieved_offer_twenty] run scoreboard players enable @p[tag=send_offer_twenty] trade
execute if entity @s[tag=receive_offer_twenty,tag=!received_offer_twenty] run tag @s add received_offer_twenty
execute if entity @s[tag=receive_offer_twenty,tag=received_offer_twenty] run tag @s remove receive_offer_twenty
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] if entity @e[tag=slot_twenty,tag=send] if entity @e[tag=slot_twenty,tag=receive] run item entity @s weapon.offhand copy entity @e[tag=slot_twenty,tag=send,limit=1] weapon.mainhand
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] unless entity @e[tag=slot_twenty,tag=receive] run tellraw @s {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] unless entity @e[tag=slot_twenty,tag=receive] run tellraw @p[tag=send_offer_twenty,scores={trade=-1}] {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] if entity @e[tag=slot_twenty,tag=send] if entity @e[tag=slot_twenty,tag=receive] run item entity @p[tag=send_offer_twenty,scores={trade=-1}] weapon.offhand copy entity @e[tag=slot_twenty,tag=receive,limit=1] weapon.mainhand
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] unless entity @e[tag=slot_twenty,tag=send] run tellraw @s {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] unless entity @e[tag=slot_twenty,tag=send] run tellraw @p[tag=send_offer_twenty,scores={trade=-1}] {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] if entity @e[tag=slot_twenty,tag=send] if entity @e[tag=slot_twenty,tag=receive] at @s run tp @e[tag=slot_twenty,tag=send,limit=1] 0 0 0
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] if entity @e[tag=slot_twenty,tag=send] if entity @e[tag=slot_twenty,tag=receive] at @p[tag=send_offer_twenty,scores={trade=-1}] run tp @e[tag=slot_twenty,tag=receive,limit=1] 0 0 0
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] if entity @e[tag=slot_twenty,tag=send] if entity @e[tag=slot_twenty,tag=receive] at @p[tag=send_offer_twenty,scores={trade=-1}] run kill @e[tag=slot_twenty,tag=receive,limit=1]
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] if entity @e[tag=slot_twenty,tag=send] if entity @e[tag=slot_twenty,tag=receive] at @s run kill @e[tag=slot_twenty,tag=send,limit=1]
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] run tag @s add reset_offer_twenty
execute if entity @p[tag=send_offer_twenty,scores={trade=-1}] if entity @s[tag=received_offer_twenty,scores={trade=20}] run tag @p[tag=send_offer_twenty,scores={trade=-1}] add reset_offer_twenty
execute if entity @p[tag=reset_offer_twenty] as @a[tag=reset_offer_twenty] run scoreboard players reset @s trade
execute if entity @p[tag=reset_offer_twenty] as @a[tag=reset_offer_twenty] run scoreboard players set @s trade_timer -1
execute if entity @p[tag=reset_offer_twenty] as @a[tag=reset_offer_twenty] run tag @s remove send_offer_twenty
execute if entity @p[tag=reset_offer_twenty] as @a[tag=reset_offer_twenty] run tag @s remove receive_offer_twenty
execute if entity @p[tag=reset_offer_twenty] as @a[tag=reset_offer_twenty] run tag @s remove received_offer_twenty
execute if entity @p[tag=reset_offer_twenty] as @a[tag=reset_offer_twenty] run tag @s remove reset_offer_twenty
