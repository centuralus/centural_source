

#;trade_slot

#;reset_offer
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run kill @e[tag=slot_two,type=armor_stand]
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s add reset_trade
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove send_offer_two
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove receive_offer_two
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove received_offer_two
execute if entity @p[tag=reset_offer_two] as @a[tag=reset_offer_two] run tag @s remove reset_offer_two




