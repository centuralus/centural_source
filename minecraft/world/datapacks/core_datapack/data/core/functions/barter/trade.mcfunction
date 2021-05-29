
execute as @a unless entity @s[scores={trade=-2147483648..2147483647}] run scoreboard players enable @s trade
execute if entity @p[scores={trade=1..}] as @a[scores={trade=1..}] run tag @s add reset_trade
execute if entity @p[scores={trade=..-1}] as @a[scores={trade=..-1}] run tag @s add reset_trade


#
execute if entity @p[scores={trade=-3}] as @p[scores={trade=-3}] at @s as @a[distance=1..] run function core:barter/accept_loop
#

#
execute if entity @p[scores={trade=-2}] as @a[scores={trade=-2}] run function rx.playerdb:api/get_self

execute if entity @p[scores={trade=-2}] as @a[scores={trade=-2}] run data modify storage rx:io playerdb.player.data.centural.core.barter.trade set value 0

execute if entity @p[scores={trade=-2}] as @a[scores={trade=-2}] run scoreboard players set @s barter 2

execute if entity @p[scores={trade=-2}] as @a[scores={trade=-2}] run function rx.playerdb:api/save_self
#

#
execute if entity @p[scores={trade=-1}] as @a[scores={trade=-1}] run function rx.playerdb:api/get_self

execute if entity @p[scores={trade=-1}] as @a[scores={trade=-1}] store result score @s trade run data get storage rx:io playerdb.player.data.centural.core.barter.trade 1
#

#
execute if entity @p[scores={trade=2..}] as @p[scores={trade=2..}] at @s as @a[distance=0.1..] if score @s unique = @p[scores={trade=2..}] trade run tag @p[scores={trade=2..}] add trade_barter
execute if entity @p[scores={trade=2..}] as @p[scores={trade=2..}] at @s as @a[distance=0.1..] if score @s unique = @p[scores={trade=2..}] trade run tag @s add receive_barter

execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] run function rx.playerdb:api/get_self
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] store result storage rx:io playerdb.player.data.centural.core.barter.trade_with_uid int 1 run scoreboard players get @p[tag=receive_barter] rx.uid
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] store result storage rx:io playerdb.player.data.centural.core.barter.trade int 1 run scoreboard players get @p[tag=trade_barter] trade
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] run function rx.playerdb:api/save_self

execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] as @p[tag=receive_barter] run function rx.playerdb:api/get_self
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] as @p[tag=receive_barter] if data storage rx:io playerdb.player.data.centural.core.barter.trade store result score @s trade run data get storage rx:io playerdb.player.data.centural.core.barter.trade 1
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] as @p[tag=receive_barter] if data storage rx:io playerdb.player.data.centural.core.barter.trade unless score @s trade matches 0 if score @s trade = @p[tag=trade_barter] unique if score @s unique = @p[tag=trade_barter] trade unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run tag @s add accept_barter
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] as @p[tag=receive_barter] if data storage rx:io playerdb.player.data.centural.core.barter.trade unless score @s trade matches 0 if score @s trade = @p[tag=trade_barter] unique if score @s unique = @p[tag=trade_barter] trade if entity @s[nbt={Inventory:[{Slot:-106b}]}] run tellraw @s {"text":"You must remove what is in your off hand then try again. (Re-click trade from view_all menu)","color":"yellow"}
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] as @p[tag=receive_barter] if data storage rx:io playerdb.player.data.centural.core.barter.trade unless score @s trade matches 0 if score @s trade = @p[tag=trade_barter] unique if score @s unique = @p[tag=trade_barter] trade as @p[tag=trade_barter] unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run tag @p[tag=trade_barter] add accept_barter
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] as @p[tag=receive_barter] if data storage rx:io playerdb.player.data.centural.core.barter.trade unless score @s trade matches 0 if score @s trade = @p[tag=trade_barter] unique if score @s unique = @p[tag=trade_barter] trade as @p[tag=trade_barter] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run tellraw @s {"text":"You must remove what is in your off hand then try again. (Re-click trade from view_all menu)","color":"yellow"}

#
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=receive_barter] run tellraw @s {"text":"Accepting trade...","color":"#f2d432"}
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=trade_barter] run function rx.playerdb:api/get_self
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=receive_barter] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["receive"],Invisible:1b,Invulnerable:1b,Marker:1b}
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=receive_barter] at @s run data modify entity @e[tag=receive,distance=..1,limit=1,type=minecraft:armor_stand] HandItems[1] set from storage rx:io playerdb.player.data.centural.core.barter.offer

execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=trade_barter] at @s run data modify storage rx:io playerdb.player.data.centural.core.barter set value {}
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=trade_barter] run function rx.playerdb:api/save_self
#

#
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=trade_barter] run tellraw @s {"text":"Accepting trade...","color":"#f2d432"}
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=receive_barter] run function rx.playerdb:api/get_self
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=trade_barter] at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:["trade"],Invisible:1b,Invulnerable:1b,Marker:1b}
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=trade_barter] at @s run data modify entity @e[tag=trade,distance=..1,limit=1,type=minecraft:armor_stand] HandItems[1] set from storage rx:io playerdb.player.data.centural.core.barter.offer

execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=receive_barter] at @s run data modify storage rx:io playerdb.player.data.centural.core.barter set value {}

execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=receive_barter] run function rx.playerdb:api/save_self
#

#
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=receive_barter] at @s run item replace entity @s weapon.offhand from entity @e[tag=receive,type=minecraft:armor_stand,distance=..1,limit=1] weapon.offhand

execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=trade_barter] at @s run item replace entity @s weapon.offhand from entity @e[tag=trade,type=minecraft:armor_stand,distance=..1,limit=1] weapon.offhand
#

#
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=receive_barter] at @s run kill @e[tag=receive,distance=..1,limit=1,type=armor_stand]
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=trade_barter] at @s run kill @e[tag=trade,distance=..1,limit=1,type=armor_stand]
#

execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=receive_barter,tag=accept_barter] run tag @s add reset_trade
execute if entity @p[tag=trade_barter,tag=accept_barter] if entity @p[tag=receive_barter,tag=accept_barter] as @p[tag=trade_barter,tag=accept_barter] run tag @s add reset_trade
execute if entity @p[tag=trade_barter,tag=accept_barter,tag=reset_trade] as @p[tag=trade_barter,tag=accept_barter,tag=reset_trade] run tag @s remove trade_barter
execute if entity @p[tag=receive_barter,tag=accept_barter,tag=reset_trade] as @p[tag=receive_barter,tag=accept_barter,tag=reset_trade] run tag @s remove trade_barter


#cstore result storage rx:io playerdb.player.data.centural.core.barter.trade int 1 run scoreboard players get @p[tag=trade_barter] rx.uuid
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] run function rx.playerdb:api/get_self
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] run tellraw @p[tag=receive_barter] [{"selector":"@s"},{"text":" would like to trade ","color":"yellow"},{"nbt":"playerdb.player.data.centural.core.barter.offer","storage":"rx:io"}]
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] as @p[tag=receive_barter] run function rx.playerdb:api/get_self
execute if entity @p[tag=trade_barter] as @p[tag=trade_barter] as @p[tag=receive_barter] run tellraw @s [{"text":"For your ","color":"yellow"},{"nbt":"playerdb.player.data.centural.core.barter.offer","storage":"rx:io"}]


execute if entity @p[tag=accept_barter] as @a[tag=accept_barter] run tag @s remove accept_barter
execute if entity @p[tag=trade_barter] as @a[tag=trade_barter] run tag @s remove trade_barter
execute if entity @p[tag=receive_barter] as @a[tag=receive_barter] run tag @s remove receive_barter
execute if entity @p[scores={trade=2..}] as @a[scores={trade=2..}] run tag @s add reset_trade
execute if entity @p[scores={trade=..-1}] as @a[scores={trade=..-1}] run tag @s add reset_trade


#
execute if entity @p[tag=reset_trade] as @a[tag=reset_trade] run scoreboard players reset @s trade
#execute if entity @p[tag=reset_trade] as @a[tag=reset_trade] run scoreboard players enable @s trade
execute if entity @p[tag=reset_trade] as @a[tag=reset_trade] run tag @s remove reset_trade
#

#
execute if entity @e[tag=receive,type=armor_stand] run kill @e[tag=receive,type=armor_stand]
execute if entity @e[tag=trade,type=armor_stand] run kill @e[tag=trade,type=armor_stand]
#
