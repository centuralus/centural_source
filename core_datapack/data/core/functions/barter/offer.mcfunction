execute as @a unless entity @s[scores={barter=-2147483648..2147483647}] run tag @s add reset_barter
execute if entity @p[scores={barter=1..}] as @a[scores={barter=1..}] run tag @s add reset_barter
execute if entity @p[scores={barter=..-1}] as @a[scores={barter=-..1}] run tag @s add reset_barter


execute if entity @p[scores={barter=2}] as @a[scores={barter=2}] run tag @s add claim_barter

execute if entity @p[tag=claim_barter] as @a[tag=claim_barter] run funcore core:barter/claim

execute if entity @p[scores={barter=3}] as @a[scores={barter=3}] run tag @s add offer_barter


execute if entity @p[tag=reset_barter] as @a[tag=reset_barter] run scoreboard players reset @s barter
execute if entity @p[tag=reset_barter] as @a[tag=reset_barter] run scoreboard players enable @s barter
execute if entity @p[tag=reset_barter] as @a[tag=reset_barter] run tag @s remove reset_barter