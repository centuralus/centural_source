execute if entity @s[tag=unlock_stream_chat] run 
function rx.playerdb:api/get_self

#
execute if entity @s[tag=unlock_stream_chat] store result score @s stream_chat run data get storage rx:io playerdb.player.data.centural.core.stream.chat

#
execute if entity @s[tag=unlock_stream_chat,scores={stream_chat=1}] run tellraw @s {"text":"You already have stream chat unlocked. Please contact an Admin in Discord to receive your role in Discord and access to the stream chat voice channel.","color":"yellow"}
execute if entity @s[tag=unlock_stream_chat,scores={stream_chat=1}] run tag @s remove unlock_stream_chat

#
execute if entity @s[tag=unlock_stream_chat] store result score @s stream_token run data get storage rx:io playerdb.player.data.centural.core.stream.token

execute if entity @s[tag=unlock_stream_chat,scores={stream_chat=0,stream_token=..99}] run tellraw @s {"text":"You must have 100 stream tokens to unlock discord stream voice chat.","color":"yellow"}

execute if entity @s[tag=unlock_stream_chat,scores={stream_chat=0,stream_token=100..}] run tellraw @s {"text":"Congratulations! You now have stream chat unlocked. Please contact an administrator in discord to receive access to stream chat voice channel.","color":"light_purple"}

execute if entity @s[tag=unlock_stream_chat,scores={stream_chat=0,stream_token=100..}] run data modify storage rx:io playerdb.player.data.centural.core.stream.chat set value 1b

execute if entity @s[tag=unlock_stream_chat] run function rx.playerdb:api/save_self

execute if entity @s[tag=unlock_stream_chat] run tag @s remove unlock_stream_chat
