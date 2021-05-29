#
execute if entity @s[tag=receive_stream_token] run 
function rx.playerdb:api/get_self

#
execute if entity @s[tag=receive_stream_token] store result score @s stream_token run data get storage rx:io playerdb.player.data.centural.core.stream.token

#
execute if entity @s[tag=receive_stream_token] run scoreboard players add @s stream_token 1

#
execute if entity @s[tag=receive_stream_token] store result storage rx:io playerdb.player.data.centural.core.stream.token int 1 run scoreboard players get @s stream_token

#
execute if entity @s[tag=receive_stream_token] run tellraw @s [{"text":"You have received a stream token","color":"yellow"},"\n","Wallet ~ ",{"nbt":"playerdb.player.data.centural.core.stream.token","storage":"rx:io","color":"green"}]

#
execute if entity @s[tag=receive_stream_token] run function rx.playerdb:api/save_self



#
execute if entity @s[tag=receive_stream_token] run tag @s remove receive_stream_token
