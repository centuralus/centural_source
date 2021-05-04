
execute as @r unless entity @s[scores={trade=-2147483648..2147483647}] run scoreboard players enable @s trade

#
execute if entity @p[scores={trade_timer=250..}] as @a[scores={trade_timer=250..}] run tag @s add reset_trade
execute if entity @p[scores={trade_timer=250..}] as @a[scores={trade_timer=250..}] run scoreboard players set @s trade_timer -250
execute if entity @p[scores={trade_timer=..0}] as @a[scores={trade_timer=..0}] unless entity @p[scores={trade_timer=0..}] run scoreboard objectives remove trade_timer
#



execute if entity @p[scores={trade=2..}] as @p[scores={trade=2..}] unless entity @s[scores={trade_timer=0..}] run scoreboard objectives add trade_timer minecraft.custom:minecraft.play_time

#Reset Trade

execute if entity @p[tag=reset_trade,tag=offer_trade] as @a[tag=reset_trade,tag=offer_trade] run tellraw @s {"color":"yellow","text":"Trade offer expired."}

execute if entity @p[tag=reset_trade,tag=offer_trade] as @a[tag=reset_trade,tag=offer_trade] run tag @s remove offer_trade

execute if entity @p[tag=reset_trade,tag=received_offer] as @a[tag=reset_trade,tag=received_offer] run tellraw @s {"color":"yellow","text":"Receiving trade offer expired."}

execute if entity @p[tag=reset_trade,tag=received_offer] as @a[tag=reset_trade,tag=received_offer] run tag @s remove received_offer


execute if entity @p[tag=reset_trade] as @a[tag=reset_trade] run scoreboard players reset @s trade

execute if entity @p[tag=reset_trade] as @a[tag=reset_trade] run tag @s remove reset_trade
#End Reset trade

function core:trade/generate
