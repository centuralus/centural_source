#
execute if entity @s[tag=receive_stream_token] run function core:stream/receive_token

execute if entity @p[scores={stream_timer=..-1},tag=!block_stream] as @a[scores={stream_timer=..-1},tag=!block_stream] run scoreboard players set @s stream_timer 0


execute if entity @p[scores={stream_timer=20000..},tag=!block_stream] as @a[scores={stream_timer=20000..},tag=!block_stream] run tag @s add receive_stream_token

execute if entity @p[scores={stream_timer=20000..},tag=!block_stream] as @a[scores={stream_timer=20000..},tag=!block_stream] run scoreboard players set @s stream_timer 0

execute if entity @p[scores={stream_timer=0..},tag=block_stream] as @a[scores={stream_timer=0..},tag=block_stream] run scoreboard players set @s stream_timer -20000000
