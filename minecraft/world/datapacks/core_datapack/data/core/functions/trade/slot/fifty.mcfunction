execute unless entity @s[tag=send_offer_fifty] unless entity @p[tag=received_offer_fifty] unless entity @p[tag=receive_offer_fifty] unless entity @e[tag=send,tag=slot_fifty,type=villager] at @s anchored eyes positioned ^ ^-1 ^1 run summon villager ~ ~ ~ {Invulnerable:1b,Health:1f,NoGravity:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CustomName:'{"text":"Trade in progress","color":"blue"}',HandItems:[{},{}],HandDropChances:[1.000F,1.000F],Tags:["keep","send","slot","slot_fifty"]}
execute unless entity @s[tag=send_offer_fifty] unless entity @p[tag=received_offer_fifty] unless entity @p[tag=receive_offer_fifty] run item entity @e[tag=send,tag=slot_fifty,limit=1] weapon.mainhand copy entity @s weapon.offhand
execute unless entity @s[tag=send_offer_fifty] unless entity @p[tag=received_offer_fifty] unless entity @p[tag=receive_offer_fifty] run item entity @s weapon.offhand replace air
execute unless entity @s[tag=send_offer_fifty] unless entity @p[tag=received_offer_fifty] unless entity @p[tag=receive_offer_fifty] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tellraw @p[distance=0] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"HandItems[0]","entity":"@e[tag=slot_fifty,tag=send]"},"\n",{"color":"light_purple","text":"To offer an item hold the item in your left hand then Click Here.","clickEvent":{"action":"run_command","value":"/trigger trade set 50"}}]
execute unless entity @s[tag=send_offer_fifty] unless entity @p[tag=received_offer_fifty] unless entity @p[tag=receive_offer_fifty] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tag @p[distance=0] add receive_offer_fifty
execute unless entity @s[tag=send_offer_fifty] unless entity @s[tag=received_offer_fifty] run tag @s[tag=!receive_offer_fifty,tag=!send_offer_fifty] add send_offer_fifty
execute if entity @s[tag=receive_offer_fifty,tag=!received_offer_fifty] unless entity @e[tag=receive,tag=slot_fifty,type=villager] at @s anchored eyes positioned ^ ^-1 ^1 run summon villager ~ ~ ~ {Invulnerable:1b,Health:1f,NoGravity:1b,Silent:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,CustomName:'{"text":"Trade in progress"}',HandItems:[{},{}],HandDropChances:[1.000F,1.000F],Tags:["keep","receive","slot","slot_fifty"]}
#execute if entity @s[tag=receive_offer_fifty,tag=!received_offer_fifty] run data modify storage core:trade live[50].receive set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[tag=receive_offer_fifty,tag=!received_offer_fifty] run item entity @e[tag=receive,tag=slot_fifty,limit=1] weapon.mainhand copy entity @s weapon.offhand
execute if entity @s[tag=receive_offer_fifty,tag=!received_offer_fifty] run item entity @s weapon.offhand replace air
execute if entity @s[tag=receive_offer_fifty,tag=!received_offer_fifty] run tellraw @p[tag=send_offer_fifty] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"HandItems[0]","entity":"@e[tag=slot_fifty,tag=receive]"}," in exchange for your ",{"nbt":"HandItems[0]","entity":"@e[tag=slot_fifty,tag=send]"},"\n",{"color":"light_purple","text":"To accept click here.","clickEvent":{"action":"run_command","value":"/trigger trade set -1"}}]
execute if entity @s[tag=receive_offer_fifty,tag=!recieved_offer_fifty] run scoreboard players enable @p[tag=send_offer_fifty] trade
execute if entity @s[tag=receive_offer_fifty,tag=!received_offer_fifty] run tag @s add received_offer_fifty
execute if entity @s[tag=receive_offer_fifty,tag=received_offer_fifty] run tag @s remove receive_offer_fifty
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] if entity @e[tag=slot_fifty,tag=send] if entity @e[tag=slot_fifty,tag=receive] run item entity @s weapon.offhand copy entity @e[tag=slot_fifty,tag=send,limit=1] weapon.mainhand
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] unless entity @e[tag=slot_fifty,tag=receive] run tellraw @s {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] unless entity @e[tag=slot_fifty,tag=receive] run tellraw @p[tag=send_offer_fifty,scores={trade=-1}] {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] if entity @e[tag=slot_fifty,tag=send] if entity @e[tag=slot_fifty,tag=receive] run item entity @p[tag=send_offer_fifty,scores={trade=-1}] weapon.offhand copy entity @e[tag=slot_fifty,tag=receive,limit=1] weapon.mainhand
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] unless entity @e[tag=slot_fifty,tag=send] run tellraw @s {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] unless entity @e[tag=slot_fifty,tag=send] run tellraw @p[tag=send_offer_fifty,scores={trade=-1}] {"text":"Trade has been canceled"}
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] if entity @e[tag=slot_fifty,tag=send] if entity @e[tag=slot_fifty,tag=receive] at @s run tp @e[tag=slot_fifty,tag=send,limit=1] 0 0 0
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] if entity @e[tag=slot_fifty,tag=send] if entity @e[tag=slot_fifty,tag=receive] at @p[tag=send_offer_fifty,scores={trade=-1}] run tp @e[tag=slot_fifty,tag=receive,limit=1] 0 0 0
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] if entity @e[tag=slot_fifty,tag=send] if entity @e[tag=slot_fifty,tag=receive] at @p[tag=send_offer_fifty,scores={trade=-1}] run kill @e[tag=slot_fifty,tag=receive,limit=1]
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] if entity @e[tag=slot_fifty,tag=send] if entity @e[tag=slot_fifty,tag=receive] at @s run kill @e[tag=slot_fifty,tag=send,limit=1]
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] run tag @s add reset_offer_fifty
execute if entity @p[tag=send_offer_fifty,scores={trade=-1}] if entity @s[tag=received_offer_fifty,scores={trade=50}] run tag @p[tag=send_offer_fifty,scores={trade=-1}] add reset_offer_fifty
execute if entity @p[tag=reset_offer_fifty] as @a[tag=reset_offer_fifty] run scoreboard players reset @s trade
execute if entity @p[tag=reset_offer_fifty] as @a[tag=reset_offer_fifty] run scoreboard players set @s trade_timer -1
execute if entity @p[tag=reset_offer_fifty] as @a[tag=reset_offer_fifty] run tag @s remove send_offer_fifty
execute if entity @p[tag=reset_offer_fifty] as @a[tag=reset_offer_fifty] run tag @s remove receive_offer_fifty
execute if entity @p[tag=reset_offer_fifty] as @a[tag=reset_offer_fifty] run tag @s remove received_offer_fifty
execute if entity @p[tag=reset_offer_fifty] as @a[tag=reset_offer_fifty] run tag @s remove reset_offer_fifty
