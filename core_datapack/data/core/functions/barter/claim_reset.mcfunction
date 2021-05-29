
function rx.playerdb:api/get_self

execute store result score @s trade run data get storage rx:io playerdb.player.data.centural.core.barter.trade
execute if score @s trade = @p[tag=claim_barter] unique run tag @s add reset_barter_trade

execute if entity @p[tag=reset_barter_trade] as @p[tag=reset_barter_trade] run data modify storage rx:io playerdb.player.data.centural.core.barter.trade set value 0
execute if entity @p[tag=reset_barter_trade] as @p[tag=reset_barter_trade] run function rx.playerdb:api/save_self
execute if entity @p[tag=reset_barter_trade] as @p[tag=reset_barter_trade] run tag @s remove reset_barter_trade

scoreboard players reset @s trade
