

execute if entity @s[tag=unlock_stream_particle_snow] run function rx.playerdb:api/get_self

#
execute if entity @s[tag=unlock_stream_particle_snow] store result score @s temp run data get storage rx:io playerdb.player.data.centural.core.stream.particle.snow


#
execute if entity @s[tag=unlock_stream_particle_snow,scores={temp=1}] run tellraw @s {"text":"You have already unlocked this particle.","color":"yellow"}
execute if entity @s[tag=unlock_stream_particle_snow,scores={temp=1}] run tag @s remove unlock_stream_particle_snow

#
execute if entity @s[tag=unlock_stream_particle_snow] store result score @s stream_token run data get storage rx:io playerdb.player.data.centural.core.stream.token

execute if entity @s[tag=unlock_stream_particle_snow,scores={temp=0,stream_token=..1}] run tellraw @s {"text":"You need 1 token to switch your stream particle.","color":"yellow"}

execute if entity @s[tag=unlock_stream_particle_snow,scores={temp=0,stream_token=1..}] run tellraw @s {"text":"Enabling snow particle.","color":"light_purple"}

execute if entity @s[tag=unlock_stream_particle_snow,scores={temp=0,stream_token=1..}] run data modify storage rx:io playerdb.player.data.centural.core.stream.particle.snow set value 1b


execute if entity @s[tag=unlock_stream_particle_snow,scores={temp=0,stream_token=1..}] run scoreboard players remove @s stream_token 1

execute if entity @s[tag=unlock_stream_particle_snow,scores={temp=0,stream_token=1..}] store result storage rx:io playerdb.player.data.centural.core.stream.token int 1 run scoreboard players get @s stream_token

execute if entity @s[tag=unlock_stream_particle_snow,scores={temp=0,stream_token=1..}] run tag @s add stream_particle_snow


execute if entity @s[tag=unlock_stream_particle_snow] run function rx.playerdb:api/save_self

execute if entity @s[tag=unlock_stream_particle_snow] run tag @s remove unlock_stream_particle_snow
