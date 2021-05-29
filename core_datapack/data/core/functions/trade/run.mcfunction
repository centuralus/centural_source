

execute if entity @p[scores={trade=1}] as @p[scores={trade=1}] run tag @s add reset_trade

execute if entity @p[scores={trade=2..}] as @p[scores={trade=2..}] unless entity @s[scores={trade_timer=0..}] run scoreboard objectives add trade_timer minecraft.custom:minecraft.play_time

execute if entity @p[scores={trade=2..}] as @p[scores={trade=2..}] run tag @s add offer_trade

execute if entity @p[tag=offer_trade,scores={trade=2}] as @p[tag=offer_trade,scores={trade=2}] run data modify storage core:trade live[2] set from entity @s Inventory[{Slot:-106b}]
execute if entity @p[tag=offer_trade,scores={trade=3}] as @p[tag=offer_trade,scores={trade=3}] run data modify storage core:trade live[3] set from entity @s Inventory[{Slot:-106b}]
#;;core_trade_live

#
execute if entity @p[tag=offer_trade,scores={trade=2}] as @p[tag=offer_trade,scores={trade=2}] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tag @p[distance=0] add receive_offer_two
#


execute if entity @p[tag=offer_trade] as @p[tag=offer_trade] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tag @p[distance=0] add receive_offer

execute if entity @p[tag=receive_offer,tag=!received_offer] as @a[tag=receive_offer,tag=!received_offer] run tellraw @s [{"selector":"@p[tag=offer_trade]"},{"text":" would like to trade ","color":"yellow"},{"nbt":"live","storage":"core:trade"},"\n",{"color":"light_purple","text":"To offer an item hold the item in your left hand then Click Here.","clickEvent":{"action":"run_command","value":"/trigger trade set -3"}}]

execute if entity @p[tag=receive_offer,tag=!received_offer] as @p[tag=receive_offer,tag=!received_offer] run tag @s add received_offer
execute if entity @p[tag=receive_offer,tag=received_offer] as @p[tag=receive_offer,tag=received_offer] run tag @s remove receive_offer

execute if entity @p[tag=received_offer] as @p[tag=received_offer,scores={trade=-3}] at @s at @a[distance=1..] if score @p[tag=offer_trade,distance=0] trade = @s unique run tag @p[tag=offer_trade,distance=0] add offer_receive_trade

execute if entity @p[tag=received_offer] as @p[tag=received_offer,scores={trade=-3}] at @s at @a[distance=1..] if score @p[tag=offer_trade,distance=0] trade = @s unique run tellraw @p[tag=offer_trade,distance=0] [{"selector":"@s"}," would like to trade ",{"nbt":"Inventory[{Slot:-106b}].Count","entity":"@s"}," ",{"nbt":"Inventory[{Slot:-106b}].id","entity":"@s"}," Details: ",{"nbt":"Inventory[{Slot:-106b}].tag","entity":"@s"}," for ","\n",{"selector":"@p[tag=offer_trade,distance=0]"}," would like to trade ",{"nbt":"Inventory[{Slot:-106b}].Count","entity":"@p[tag=offer_trade,distance=0]"}," ",{"nbt":"Inventory[{Slot:-106b}].id","entity":"@p[tag=offer_trade,distance=0]"}," Details: ",{"nbt":"Inventory[{Slot:-106b}].tag","entity":"@p[tag=offer_trade,distance=0]"},"\n",{"color":"light_purple","text":"To accept click here","clickEvent":{"action":"run_command","value":"/trigger trade set -1"}}]



#;trade