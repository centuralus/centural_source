execute as @r unless entity @s[scores={trade=-2147483648..2147483647}] run scoreboard players enable @s trade

execute if entity @p[scores={trade=1}] as @p[scores={trade=1}] run tag @s add reset_trade

execute if entity @p[scores={trade=2..}] as @p[scores={trade=2..}] run tag @s add offer_trade

execute if entity @p[tag=offer_trade] as @p[tag=offer_trade] at @s at @a[distance=1..] if score @p[distance=0] unique = @s trade run tag @p[distance=0] add receive_offer

execute if entity @p[tag=receive_offer,tag=!received_offer] as @a[tag=receive_offer,tag=!received_offer] run tellraw @s [{"selector":"@p[tag=offer_trade]"}," would like to trade a ",{"nbt":"Inventory[{Slot:-106b}]","entity":"@s"}]

execute if entity @p[tag=receive_offer,tag=!received_offer] as @p[tag=receive_offer,tag=!received_offer] run tag @s add received_offer
execute if entity @p[tag=receive_offer,tag=received_offer] as @p[tag=receive_offer,tag=received_offer] run tag @s remove receive_offer

#Reset Trade
execute if entity @p[tag=reset_trade] as @a[tag=reset_trade] run scoreboard players reset @s trade

execute if entity @p[tag=reset_trade] as @a[tag=reset_trade] run tag @s remove reset_trade
#End Reset trade

#;trade