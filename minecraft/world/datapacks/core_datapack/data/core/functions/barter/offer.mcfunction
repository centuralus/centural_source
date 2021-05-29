function rx.playerdb:api/get_self
execute store result score @s barter run data get storage rx:io playerdb.player.data.centural.core.barter.offer
execute if entity @s[scores={barter=0}] run tellraw @s {"text":"Setting up new offer","color":"yellow"} 
execute if entity @s[scores={barter=1..}] run tellraw @s [{"nbt":"playerdb.player.data.centural.core.barter.offer","storage":"rx:io","color":"light_purple"},"\n",{"text":"Item found in offer, please claim before adding a new offer.","color":"yellow"}]
execute if entity @s[scores={barter=1..}] run scoreboard players set @s barter -1
#
execute if entity @s[scores={barter=0}] store result score @s barter run execute if entity @s[nbt={Inventory:[{Slot:-106b}]}]
execute if entity @s[scores={barter=1}] at @s run data modify storage rx:io playerdb.player.data.centural.core.barter set value {offer:{},trade:0}
execute if entity @s[scores={barter=1}] at @s run data modify storage rx:io playerdb.player.data.centural.core.barter.offer set from entity @s Inventory[{Slot:-106b}]
execute if entity @s[scores={barter=1}] at @s run item replace entity @s weapon.offhand with air
execute if entity @s[scores={barter=1}] run function rx.playerdb:api/save_self
execute if entity @s[scores={barter=0}] run tellraw @s {"text":"You must have something in your off hand to offer.","color":"yellow"}
tag @s add reset_barter
tag @s remove offer_barter
#function rx.playerdb:api/save_self
