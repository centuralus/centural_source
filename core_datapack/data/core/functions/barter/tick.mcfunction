#
execute as @a unless entity @s[scores={barter=-2147483648..2147483647}] run tag @s add reset_barter
execute if entity @p[scores={barter=1..}] as @a[scores={barter=1..}] run tag @s add reset_barter
execute if entity @p[scores={barter=..-1}] as @a[scores={barter=..-1}] run tag @s add reset_barter
#

#
execute if entity @p[scores={barter=2}] as @p[scores={barter=2}] run tag @s add claim_barter
execute if entity @p[scores={barter=3}] as @p[scores={barter=3}] run tag @s add offer_barter
execute if entity @p[scores={barter=4}] as @p[scores={barter=4}] run tag @s add view_barter
execute if entity @p[scores={barter=5}] as @p[scores={barter=5}] run tag @s add view_all_barter
#

#
execute if entity @p[tag=claim_barter] as @p[tag=claim_barter] run function core:barter/claim
execute if entity @p[tag=offer_barter] as @p[tag=offer_barter] run function core:barter/offer
execute if entity @p[tag=view_barter] as @p[tag=view_barter] run function core:barter/view
execute if entity @p[tag=view_all_barter] as @p[tag=view_all_barter] run function core:barter/view_all
#

#
function core:barter/trade
#

#
execute if entity @e[tag=claim,type=armor_stand] as @e[tag=claim,type=armor_stand] at @s unless entity @p[distance=..1] run kill @s[type=armor_stand]
#execute if entity @e[tag=offer,type=armor_stand] as @e[tag=offer,type=armor_stand] at @s unless entity @p[distance=..1] run kill @s[type=armor_stand]
#

#
execute if entity @p[tag=reset_barter] as @a[tag=reset_barter] run scoreboard players reset @s barter
execute if entity @p[tag=reset_barter] as @a[tag=reset_barter] run scoreboard players enable @s barter
execute if entity @p[tag=reset_barter] as @a[tag=reset_barter] run tag @s remove reset_barter
#
#test