execute as @a unless entity @s[scores={stream=-2147483648..2147483647}] run scoreboard players enable @s stream

execute if entity @p[scores={stream=1..}] as @p[scores={stream=1..}] run tag @s add reset_stream

execute if entity @p[scores={stream=2}] as @p[scores={stream=2}] run tag @s add focus_stream
execute if entity @p[scores={stream=3}] as @p[scores={stream=3}] run tag @s add detach_stream
execute if entity @p[scores={stream=4}] as @p[scores={stream=4}] run tag @s add firework_stream
execute if entity @p[scores={stream=5}] as @p[scores={stream=5}] run tag @s add block_stream
execute if entity @p[scores={stream=6}] as @p[scores={stream=6}] run tag @s remove block_stream
execute if entity @p[scores={stream=7}] as @p[scores={stream=7}] run tag @s add unlock_stream_chat
execute if entity @p[scores={stream=8}] as @p[scores={stream=8}] run tag @s add unlock_stream_particle_heart

execute if entity @p[tag=focus_stream] as @p[tag=focus_stream] at @p[team=away,name=Bonesdog] if entity @p[team=!away,name=!Bonesdog,distance=..1] run gamemode creative @p[team=away,name=Bonesdog]
execute if entity @p[tag=focus_stream] as @p[tag=focus_stream] at @p[team=away,name=Bonesdog] if entity @p[team=!away,name=!Bonesdog,distance=..1] run gamemode spectator @p[team=away,name=Bonesdog]
execute if entity @p[tag=focus_stream] as @p[tag=focus_stream] run tp @p[team=away,name=Bonesdog] @s
execute if entity @p[tag=focus_stream] as @p[tag=focus_stream] as @p[team=away,name=Bonesdog] run spectate @p[tag=focus_stream]
#execute if entity @p[tag=focus_stream] as @p[tag=focus_stream] run scoreboard objectives add stream_fix minecraft.custom:minecraft.play_time
#execute if entity @p[tag=focus_stream] as @p[tag=focus_stream] run scoreboard players set @s stream_fix 0
#execute if entity @p[tag=focus_stream] as @p[tag=focus_stream] at @s as @a[distance=0.1..] run scoreboard players set @s stream_fix -2147483648
execute if entity @p[tag=focus_stream] as @p[tag=focus_stream] run tag @s remove focus_stream

execute if entity @p[tag=detach_stream] as @a[tag=detach_stream] at @s if entity @p[team=away,name=Bonesdog,distance=..1] run gamemode creative @p[team=away,name=Bonesdog]
execute if entity @p[tag=detach_stream] as @a[tag=detach_stream] run scoreboard objectives remove stream_fix
execute if entity @p[tag=detach_stream] as @a[tag=detach_stream] run tag @s remove detach_stream

#execute if entity @p[scores={stream_fix=250..}] at @p[team=away,name=Bonesdog] as @p[scores={stream_fix=250..},distance=..1] run tp @p[team=away,name=Bonesdog] @s
#execute if entity @p[scores={stream_fix=250..}] at @p[team=away,name=Bonesdog] if entity @p[scores={stream_fix=250..},distance=] as @p[team=away,name=Bonesdog] run spectate @p[scores={stream_fix=250..},distance=0]
#execute if entity @p[scores={stream_fix=250..}] run scoreboard players reset @s stream_fix

execute if entity @p[tag=firework_stream] as @a[tag=firework_stream] at @p[team=away,name=Bonesdog] positioned ^ ^ ^2 run summon firework_rocket ^ ^ ^2 {Glowing:1b,LifeTime:10,Motion:[0.0,0.2,0.0],FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:3,Flicker:1b,Trail:1b,Colors:[I;6750187],FadeColors:[I;16730819]}]}}}}
execute if entity @p[tag=firework_stream] as @a[tag=firework_stream] run tag @s remove firework_stream

execute if entity @p[tag=reset_stream] as @p[tag=reset_stream] run scoreboard players reset @s stream
execute if entity @p[tag=reset_stream] as @p[tag=reset_stream] run tag @s remove reset_stream

execute if entity @p as @a run function core:stream/token


#execute if entity @p[tag=follow] as @p[tag=follow] at @s unless entity @p[tag=camera,distance=..32] run tag @s remove follow

#execute if entity @p[tag=camera] as @p[tag=camera] at @s unless entity @p[distance=..32,tag=!block_stream] run tag @r[team=!away,tag=!camera,tag=!block_stream] add follow
#
#execute if entity @p[tag=follow] as @p[tag=follow] run function core:stream/follow

#execute if entity @e[type=minecraft:area_effect_cloud,tag=camera_hub] unless entity @p[tag=camera] run kill @e[type=area_effect_cloud,tag=camera_hub]

#execute if entity @p[tag=camera] as @p[tag=camera] at @s unless entity @e[tag=camera_hub,type=area_effect_cloud,limit=1,distance=..4] facing entity @e[tag=camera_hub,type=area_effect_cloud,limit=1] eyes run tp @s ^ ^ ^0.1 ~ ~

#execute unless entity @e[type=minecraft:area_effect_cloud,tag=camera_hub] at @p[tag=camera] run summon area_effect_cloud ~ ~0.225 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["camera_hub"]}
#

#execute if entity @e[tag=camera_hub] as @e[tag=camera_hub] at @s unless entity @p[distance=..32,team=!away,tag=!block_stream] run tag @r[team=!away,tag=!block_stream] add select

#execute if entity @p[tag=select] as @p[tag=select] at @s run tp @e[tag=camera_hub,limit=1] ~ ~ ~
#execute if entity @p[tag=select] as @p[tag=select] run tag @s remove select

#execute if entity @p[tag=camera] as @p[tag=camera] at @s unless entity @p[team=!away,tag=!block_stream,distance=..32] run tp @s @e[tag=camera_hub,limit=1]

execute if entity @p[tag=unlock_stream_chat] as @p[tag=unlock_stream_chat] run function core:stream/unlock



#Particles
execute if entity @p[tag=stream_particle_heart] run function core:stream/particle/heart
execute if entity @p[tag=unlock_stream_particle_heart] as @p[tag=unlock_stream_particle_heart] run function core:stream/unlock/heart
