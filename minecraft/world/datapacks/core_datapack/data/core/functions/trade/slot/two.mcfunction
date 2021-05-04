#Store the items data in storage

execute unless entity @s[tag=send_offer_two] unless entity @e[tag=send,tag=slot_two,type=armor_stand] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Health:1f,DisabledSlots:4144703,HandItems:[{},{}],Tags:["keep","send","slot","slot_two"]}
execute unless entity @s[tag=send_offer_two] unless entity @s[tag=received_offer_two] run data modify storage core:trade live[2].send set from entity @s Inventory[{Slot:-106b}]
execute unless entity @s[tag=send_offer_two] unless entity @s[tag=received_offer_two] run item entity @e[tag=send,tag=slot_two,limit=1] weapon.offhand copy entity @s weapon.offhand
execute unless entity @s[tag=send_offer_two] unless entity @s[tag=received_offer_two] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tag @p[distance=0] add receive_offer_two
execute unless entity @s[tag=send_offer_two] unless entity @s[tag=received_offer_two] run tellraw @p[tag=receive_offer_two] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"HandItems[0]","entity":"@e[tag=slot_two,tag=send]"},"\n",{"color":"light_purple","text":"To offer an item hold the item in your left hand then Click Here.","clickEvent":{"action":"run_command","value":"/trigger trade set 2"}}]
execute unless entity @s[tag=send_offer_two] unless entity @s[tag=received_offer_two] run tag @s[tag=!receive_offer_two,tag=!send_offer_two] add send_offer_two


execute if entity @s[tag=receive_offer_two,tag=!received_offer_two] unless entity @e[tag=slot_two,type=armor_stand] at @s run summon armor_stand ~ ~ ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Health:1f,DisabledSlots:4144703,HandItems:[{},{}],Tags:["keep","receive","slot","slot_two"]}
execute if entity @s[tag=receive_offer_two,tag=!received_offer_two] run data modify storage core:trade live[2].receive set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[tag=receive_offer_two,tag=!received_offer_two] run item entity @e[tag=receive,tag=slot_two,limit=1] weapon.mainhand copy entity @s weapon.offhand
execute if entity @s[tag=receive_offer_two,tag=!received_offer_two] run tellraw @p[tag=send_offer_two] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"HandItems[0]","entity":"@e[tag=slot_two,tag=receive]"}," in exchange for your ",{"nbt":"HandItems[0]","entity":"@e[tag=slot_two,tag=send]"},"\n",{"color":"light_purple","text":"To accept click here.","clickEvent":{"action":"run_command","value":"/trigger trade set -1"}}]
execute if entity @s[tag=receive_offer_two,tag=!recieved_offer_two] run scoreboard players enable @p[tag=send_offer_two] trade
execute if entity @s[tag=receive_offer_two,tag=!received_offer_two] run tag @s add received_offer_two
execute if entity @s[tag=receive_offer_two,tag=received_offer_two] run tag @s remove receive_offer_two


execute if entity @p[tag=send_offer_two,scores={trade=-1}] if entity @s[tag=received_offer_two,scores={trade=2}] run item entity @s weapon.offhand copy entity @e[tag=slot_two,tag=receive,limit=1] weapon.mainhand
execute if entity @p[tag=send_offer_two,scores={trade=-1}] if entity @s[tag=received_offer_two,scores={trade=2}] run item entity @p[tag=send_offer_two,scores={trade=-1}] weapon.offhand copy entity @e[tag=slot_two,tag=send,limit=1] weapon.mainhand

execute if entity @p[tag=send_offer_two,scores={trade=-1}] if entity @s[tag=received_offer_two,scores={trade=2}] run tag @s add reset_offer_two
execute if entity @p[tag=send_offer_two,scores={trade=-1}] if entity @s[tag=received_offer_two,scores={trade=2}] run tag @p[tag=send_offer_two,scores={trade=-1}] add reset_offer_two



execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s add reset_trade
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove send_offer_two
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove receive_offer_two
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove received_offer_two
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove reset_offer_two
