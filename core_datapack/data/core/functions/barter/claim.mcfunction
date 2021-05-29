execute at @s as @a[distance=0.1..] run function core:barter/claim_reset

function rx.playerdb:api/get_self
execute store result score @s barter run data get storage rx:io playerdb.player.data.centural.core.barter.offer
execute if entity @s[scores={barter=0}] run tellraw @s {"text":"There is no active offer to claim","color":"yellow"}
execute if entity @s[scores={barter=0}] run scoreboard players set @s barter -1 
execute if entity @s[scores={barter=1..}] run tellraw @s [{"nbt":"playerdb.player.data.centural.core.barter.offer","storage":"rx:io"},"\n",{"text":"Item found in offer"}]
execute if entity @s[scores={barter=1..}] store result score @s barter run execute if entity @s[nbt={Inventory:[{Slot:-106b}]}]
execute if entity @s[scores={barter=0}] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["claim"],Invisible:1b,Invulnerable:1b,Marker:1b}
execute if entity @s[scores={barter=0}] at @s run data modify entity @e[tag=claim,distance=..1,limit=1,type=minecraft:armor_stand] HandItems[1] set from storage rx:io playerdb.player.data.centural.core.barter.offer
execute if entity @s[scores={barter=0}] at @s run data modify storage rx:io playerdb.player.data.centural.core.barter set value {}
execute if entity @s[scores={barter=0}] at @s run item replace entity @s weapon.offhand from entity @e[tag=claim,type=minecraft:armor_stand,distance=..1,limit=1] weapon.offhand
execute if entity @s[scores={barter=0}] at @s run kill @e[tag=claim,distance=..1,limit=1,type=armor_stand]
execute if entity @s[scores={barter=1..}] run tellraw @s {"text":"You must empty your left hand before claiming an offer."}
tag @s add reset_barter
tag @s remove claim_barter
data modify storage rx:io playerdb.player.data.centural.core.barter.trade set value 0
function rx.playerdb:api/save_self