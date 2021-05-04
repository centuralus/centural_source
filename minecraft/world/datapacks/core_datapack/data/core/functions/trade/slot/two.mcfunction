#Store the items data in storage

execute unless entity @s[tag=send_offer_two] unless entity @e[tag=slot_two,type=armor_stand] run summon armor_stand 0 0 0 {NoGravity:1b,Invisible:1b,Marker:1b,Tags:["slot","slot_two"]}
execute unless entity @s[tag=send_offer_two] run data modify storage core:trade live[2].send set from entity @s Inventory[{Slot:-106b}]
execute unless entity @s[tag=send_offer_two] run item entity @e[tag=slot_two] weapon.offhand copy entity @s weapon.offhand
execute unless entity @s[tag=send_offer_two] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tag @p[distance=0] add receive_offer_two
tellraw @p[tag=receive_offer_two] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"live[2]","storage":"core:trade"},"\n",{"color":"light_purple","text":"To offer an item hold the item in your left hand then Click Here.","clickEvent":{"action":"run_command","value":"/trigger trade set 2"}}]
execute unless entity @s[tag=send_offer_two] run tag @s[tag=!receive_offer_two,tag=!send_offer_two] add send_offer_two


execute if entity @s[tag=receive_offer_two,tag=!received_offer_two] run data modify storage core:trade live[2].receive set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[tag=receive_offer_two,tag=!received_offer_two] run item entity @e[tag=slot_two] weapon.mainhand copy entity @s weapon.offhand
execute if entity @s[tag=receive_offer_two,tag=!received_offer_two] run tellraw @p[tag=send_offer_two] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"live[2].receive","storage":"core:trade"}," in exchange for your ",{"nbt":"live[2].send","storage":"core:trade"},"\n",{"color":"light_purple","text":"To accept click here.","clickEvent":{"action":"run_command","value":"/trigger trade set -1"}}]
execute if entity @s[tag=receive_offer_two,tag=!received_offer_two] run tag @s add received_offer_two

