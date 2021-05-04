
#If there is a player making an offer
execute if entity @p[scores={trade=2}] as @a[scores={trade=2}] run function core:trade/slot/two
execute if entity @p[scores={trade=3}] as @a[scores={trade=3}] run function core:trade/slot/three
#... TODO

execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s add reset_trade
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove send_offer_two
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove receive_offer_two
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove received_offer_two
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove reset_offer_two



