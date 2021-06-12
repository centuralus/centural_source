execute as @a unless entity @s[scores={stream_particle=-2147483648..2147483647}] run scoresboard players enable @s stream_particle

execute if entity @p[scores={stream_particle=1..}] as @a[scores={stream_particle=1..}] run tag @s add reset_stream_particle

execute if entity @p[scores={stream_particle=3}] as @a[scores={stream_particle=3}] run function core:steam/unlock/snow

execute if entity @p[tag=reset_stream_particle] as @a[tag=reset_stream_particle] run scoreboard players reset @s stream_particle
execute if entity @p[tag=reset_stream_particle] as @a[tag=reset_stream_particle] run tag @s remove reset_stream_particle


#
execute if entity @p[tag=stream_particle_snow] as @a[tag=stream_particle_snow] run function core:stream/particle/snow
