# Start Handle Right Click Villager Stat
execute if entity @p[scores={talk_to_villager=1..}] as @a[scores={talk_to_villager=1..}] at @s if entity @e[tag=dialogue,distance=..8] positioned ~ ~1.58 ~ positioned ^ ^ ^2 run function core:raycast/closest_villager

execute if entity @p[scores={talk_to_villager=1..}] as @a[scores={talk_to_villager=1..}] at @s if entity @e[tag=dialogue,tag=closest_villager,distance=..8] run tag @s add talk_to_villager
execute if entity @p[scores={talk_to_villager=1..}] as @a[scores={talk_to_villager=1..}] at @s if entity @e[tag=dialogue,distance=..8] run tag @s add rotation
execute if entity @p[scores={talk_to_villager=1..}] as @a[scores={talk_to_villager=1..}] at @s if entity @e[tag=dialogue,tag=closest_villager,distance=..8] run scoreboard players reset @s talk_to_villager
# End Handle Right Click Villager Stat

# Start Setup Talk Timer
execute if entity @p[tag=talk_to_villager] as @a[tag=talk_to_villager] unless entity @s[scores={talk_timer=0..}] run scoreboard objectives add talk_timer minecraft.custom:minecraft.play_one_minute
execute if entity @p[tag=talk_to_villager] as @a[tag=talk_to_villager] run tag @s add talk_timer
# Default dialogue Timeout
execute if entity @p[tag=talk_timer] as @a[tag=talk_timer] if entity @s[scores={talk_timer=20..},tag=rotation] run tag @s remove rotation

execute if entity @p[tag=talk_timer] as @a[tag=talk_timer] if entity @s[scores={talk_timer=20..}] at @s if entity @e[tag=closest_villager] run tag @e[tag=closest_villager] remove closest_villager

execute if entity @p[tag=talk_timer] as @a[tag=talk_timer] if entity @s[scores={talk_timer=20..}] run tag @s remove talk_timer
execute unless entity @p[tag=talk_timer] run scoreboard objectives remove talk_timer
# End Setup Talk Timer


execute if entity @p[tag=talk_to_villager] as @a[tag=talk_to_villager] at @s if entity @e[tag=dialogue,tag=gardener,tag=closest_villager,distance=..8] as @e[tag=dialogue,tag=gardener,tag=closest_villager,distance=..8] run tag @s add talk_to_player
execute if entity @e[tag=talk_to_player] as @e[tag=talk_to_player] at @s if entity @p[tag=talk_to_villager,distance=..8] run tellraw @a[tag=talk_to_villager,distance=..8] [{"text":"█","color":"#fffeff"},{"text":"█","color":"#feffff"},{"text":"█","color":"#fffffe"},{"text":"█","color":"#fefeff"},{"text":"█","color":"#feffff"},{"text":"█","color":"#fefefe"},{"text":"█","color":"#efead5"},{"text":"█","color":"#af954b"},{"text":"█","color":"#c6b171"},{"text":"█","color":"#f1efda"},{"text":"█","color":"#fefefe"},{"text":"█","color":"#fffffe"},{"text":"█","color":"#fefffe"},{"text":"█","color":"#fefeff"},{"text":"█","color":"#fefeff"},{"text":"█","color":"#fefefe"},{"text":"\n█","color":"#fefeff"},{"text":"█","color":"#fefffe"},{"text":"█","color":"#fefffe"},{"text":"█","color":"#feffff"},{"text":"█","color":"#fffeff"},{"text":"█","color":"#dacb80"},{"text":"█","color":"#c4ac36"},{"text":"█","color":"#c0a42d"},{"text":"█","color":"#c0a22c"},{"text":"█","color":"#c2ab44"},{"text":"█","color":"#ddcf98"},{"text":"█","color":"#fefffc"},{"text":"█","color":"#fffefe"},{"text":"█","color":"#fffefe"},{"text":"█","color":"#fefefe"},{"text":"█","color":"#fefffe"},{"text":"\n█","color":"#fffeff"},{"text":"█","color":"#fefeff"},{"text":"█","color":"#fefefd"},{"text":"█","color":"#faf6e9"},{"text":"█","color":"#cab238"},{"text":"█","color":"#c7ad28"},{"text":"█","color":"#cdb32e"},{"text":"█","color":"#dbc449"},{"text":"█","color":"#dbc547"},{"text":"█","color":"#c7ae30"},{"text":"█","color":"#c0a230"},{"text":"█","color":"#c3a850"},{"text":"█","color":"#f7f2e9"},{"text":"█","color":"#fffdfe"},{"text":"█","color":"#fefffe"},{"text":"█","color":"#fefefe"},{"text":"\n█","color":"#feffff"},{"text":"█","color":"#fefefe"},{"text":"█","color":"#fbfaf8"},{"text":"█","color":"#a18d27"},{"text":"█","color":"#d4bc3d"},{"text":"█","color":"#d3ba3a"},{"text":"█","color":"#d5bf49"},{"text":"█","color":"#d4c148"},{"text":"█","color":"#d6c14a"},{"text":"█","color":"#d0bb3c"},{"text":"█","color":"#ccb23c"},{"text":"█","color":"#c3a430"},{"text":"█","color":"#826a26"},{"text":"█","color":"#fbf9f9"},{"text":"█","color":"#fefefe"},{"text":"█","color":"#fffeff"},{"text":"\n█","color":"#fefefe"},{"text":"█","color":"#fffefe"},{"text":"█","color":"#fbf9f9"},{"text":"█","color":"#817022"},{"text":"█","color":"#7a6917"},{"text":"█","color":"#dfcb6b"},{"text":"█","color":"#decb6a"},{"text":"█","color":"#d9c349"},{"text":"█","color":"#cab22e"},{"text":"█","color":"#d3bc42"},{"text":"█","color":"#c6ad26"},{"text":"█","color":"#645018"},{"text":"█","color":"#5a4b15"},{"text":"█","color":"#f8f9f6"},{"text":"█","color":"#fefffe"},{"text":"█","color":"#fefefe"},{"text":"\n█","color":"#f2f0df"},{"text":"█","color":"#ddce92"},{"text":"█","color":"#c2af52"},{"text":"█","color":"#5e4d12"},{"text":"█","color":"#715e1b"},{"text":"█","color":"#7c6d2a"},{"text":"█","color":"#b29f38"},{"text":"█","color":"#d9c447"},{"text":"█","color":"#d4b934"},{"text":"█","color":"#9f881e"},{"text":"█","color":"#5c4914"},{"text":"█","color":"#554613"},{"text":"█","color":"#45390c"},{"text":"█","color":"#b39629"},{"text":"█","color":"#e3d8ab"},{"text":"█","color":"#fefefb"},{"text":"\n█","color":"#c0a655"},{"text":"█","color":"#c1a435"},{"text":"█","color":"#ccb743"},{"text":"█","color":"#4e3d13"},{"text":"█","color":"#5c4b13"},{"text":"█","color":"#6f5e1b"},{"text":"█","color":"#6b5719"},{"text":"█","color":"#8c7d2a"},{"text":"█","color":"#6e5c14"},{"text":"█","color":"#604f15"},{"text":"█","color":"#594815"},{"text":"█","color":"#45370b"},{"text":"█","color":"#3f3212"},{"text":"█","color":"#c5a928"},{"text":"█","color":"#e9ddaf"},{"text":"█","color":"#d9cea1"},{"text":"\n█","color":"#ba9e3d"},{"text":"█","color":"#d0bc48"},{"text":"█","color":"#c9b441"},{"text":"█","color":"#735b22"},{"text":"█","color":"#573e17"},{"text":"█","color":"#67511a"},{"text":"█","color":"#695715"},{"text":"█","color":"#645014"},{"text":"█","color":"#645415"},{"text":"█","color":"#544413"},{"text":"█","color":"#43350d"},{"text":"█","color":"#3f2e12"},{"text":"█","color":"#624b19"},{"text":"█","color":"#c7aa2c"},{"text":"█","color":"#bd9f2d"},{"text":"█","color":"#d7c69a"},{"text":"\n█","color":"#ede5c4"},{"text":"█","color":"#c2aa30"},{"text":"█","color":"#f8f0d1"},{"text":"█","color":"#997d49"},{"text":"█","color":"#8a7229"},{"text":"█","color":"#5e4516"},{"text":"█","color":"#59411a"},{"text":"█","color":"#4c4312"},{"text":"█","color":"#53420e"},{"text":"█","color":"#3f2f10"},{"text":"█","color":"#47310e"},{"text":"█","color":"#a48b25"},{"text":"█","color":"#c7ac2a"},{"text":"█","color":"#c3a82f"},{"text":"█","color":"#bdab54"},{"text":"█","color":"#fffefe"},{"text":"\n█","color":"#fefefe"},{"text":"█","color":"#fefeff"},{"text":"█","color":"#b69a4c"},{"text":"█","color":"#d2bc5a"},{"text":"█","color":"#c7b145"},{"text":"█","color":"#bca62a"},{"text":"█","color":"#8c7332"},{"text":"█","color":"#493318"},{"text":"█","color":"#3f2c0f"},{"text":"█","color":"#775f23"},{"text":"█","color":"#c7ad31"},{"text":"█","color":"#c8af39"},{"text":"█","color":"#bba135"},{"text":"█","color":"#c8be8f"},{"text":"█","color":"#fefefe"},{"text":"█","color":"#fffefe"},{"text":"\n█","color":"#fffefe"},{"text":"█","color":"#fffeff"},{"text":"█","color":"#f6fbf5"},{"text":"█","color":"#7d6832"},{"text":"█","color":"#6a7a26"},{"text":"█","color":"#96783f"},{"text":"█","color":"#817428"},{"text":"█","color":"#a89228"},{"text":"█","color":"#a58f23"},{"text":"█","color":"#c1a331"},{"text":"█","color":"#c2a42e"},{"text":"█","color":"#9c7f44"},{"text":"█","color":"#7e6553"},{"text":"█","color":"#fefefe"},{"text":"█","color":"#fefeff"},{"text":"█","color":"#fefefe"},{"text":"\n█","color":"#feffff"},{"text":"█","color":"#fcfcfc"},{"text":"█","color":"#1c4c26"},{"text":"█","color":"#4d3a24"},{"text":"█","color":"#6e4632"},{"text":"█","color":"#6f492d"},{"text":"█","color":"#366c14"},{"text":"█","color":"#bf9e35"},{"text":"█","color":"#bc9c35"},{"text":"█","color":"#ab8a2e"},{"text":"█","color":"#745638"},{"text":"█","color":"#5c3f33"},{"text":"█","color":"#70574c"},{"text":"█","color":"#fefffe"},{"text":"█","color":"#fffefe"},{"text":"█","color":"#fefefe"},{"text":"\n█","color":"#fffffe"},{"text":"█","color":"#e6dbcc"},{"text":"█","color":"#815d16"},{"text":"█","color":"#4c3c23"},{"text":"█","color":"#5e3925"},{"text":"█","color":"#50311c"},{"text":"█","color":"#6a4c3d"},{"text":"█","color":"#644434"},{"text":"█","color":"#5f4134"},{"text":"█","color":"#644533"},{"text":"█","color":"#5b3c32"},{"text":"█","color":"#593c2f"},{"text":"█","color":"#78665e"},{"text":"█","color":"#fffffe"},{"text":"█","color":"#fffefe"},{"text":"█","color":"#fefeff"},{"text":"\n█","color":"#fdfffd"},{"text":"█","color":"#ce9c65"},{"text":"█","color":"#f56e00"},{"text":"█","color":"#e66a06"},{"text":"█","color":"#533522"},{"text":"█","color":"#371f10"},{"text":"█","color":"#503025"},{"text":"█","color":"#543524"},{"text":"█","color":"#5d3f33"},{"text":"█","color":"#5c3e35"},{"text":"█","color":"#5b3c34"},{"text":"█","color":"#624e32"},{"text":"█","color":"#f2f1f0"},{"text":"█","color":"#fffffe"},{"text":"█","color":"#fffefe"},{"text":"█","color":"#fffefe"},{"text":"\n█","color":"#fdf6ef"},{"text":"█","color":"#f5c28d"},{"text":"█","color":"#dea764"},{"text":"█","color":"#e87413"},{"text":"█","color":"#523422"},{"text":"█","color":"#371e10"},{"text":"█","color":"#523f2e"},{"text":"█","color":"#563525"},{"text":"█","color":"#5c3f30"},{"text":"█","color":"#4c402f"},{"text":"█","color":"#6b573b"},{"text":"█","color":"#705c40"},{"text":"█","color":"#fefffe"},{"text":"█","color":"#fefeff"},{"text":"█","color":"#fefefe"},{"text":"█","color":"#fffefe"},{"text":"\n█","color":"#f9e5c7"},{"text":"█","color":"#f2cf9d"},{"text":"█","color":"#f0c993"},{"text":"█","color":"#d7a060"},{"text":"█","color":"#5b3a27"},{"text":"█","color":"#342011"},{"text":"█","color":"#122c14"},{"text":"█","color":"#786147"},{"text":"█","color":"#6d5439"},{"text":"█","color":"#394f2f"},{"text":"█","color":"#3e5b2f"},{"text":"█","color":"#6f5c3e"},{"text":"█","color":"#fefffe"},{"text":"█","color":"#fefffe"},{"text":"█","color":"#fffefe"},{"text":"█","color":"#fefefe"}]
execute if entity @e[tag=talk_to_player] as @e[tag=talk_to_player] at @s if entity @p[tag=talk_to_villager,distance=..8] run tellraw @a[tag=talk_to_villager,distance=..8] ["[",{"selector":"@s"},"]","Hello ",{"selector":"@p[tag=talk_to_villager,distance=..8]"}," how may I help you today?"]
execute if entity @e[tag=talk_to_player] as @e[tag=talk_to_player] at @s if entity @p[tag=talk_to_villager,distance=..8] run scoreboard players enable @a[tag=talk_to_villager,distance=..8] grow_seeds
execute if entity @e[tag=talk_to_player] as @e[tag=talk_to_player] at @s if entity @p[tag=talk_to_villager,distance=..8] run tellraw @a[tag=talk_to_villager,distance=..8] [{"text":"✎ Would you mind growing some seeds for me?","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger grow_seeds"}},"\n",{"text":"✎ Nothing for now!","color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger bye"}}]
execute if entity @e[tag=talk_to_player] as @e[tag=talk_to_player] at @s if entity @p[tag=talk_to_villager,distance=..8] run tag @s remove talk_to_player

execute if entity @p[scores={grow_seeds=1}] as @a[scores={grow_seeds=1}] run tag @s add reset_grow_seeds
execute if entity @p[scores={grow_seeds=1}] as @a[scores={grow_seeds=1}] run tag @s add enable_grow_seeds
execute if entity @p[tag=reset_grow_seeds] as @a[tag=reset_grow_seeds] run scoreboard players reset @s grow_seeds
execute if entity @p[tag=reset_grow_seeds] as @a[tag=reset_grow_seeds] run tag @s remove reset_grow_seeds
execute if entity @p[tag=enable_grow_seeds] as @a[tag=enable_grow_seeds] run scoreboard players enable @s grow_seeds
execute if entity @p[tag=enable_grow_seeds] as @a[tag=enable_grow_seeds] run tag @s remove enable_grow_seeds

execute if entity @p[scores={grow_seeds=0}] as @a[scores={grow_seeds=0}] at @s unless entity @e[tag=gardener,tag=closest_villager,distance=..12] run scoreboard players reset @s grow_seeds

execute if entity @p[scores={grow_seeds=2}] as @a[scores={grow_seeds=2}] at @s if entity @e[tag=gardener,tag=closest_villager,distance=..12] run scoreboard players enable @a[scores={grow_seeds=2}] yes
execute if entity @p[scores={grow_seeds=2}] as @a[scores={grow_seeds=2}] at @s if entity @e[tag=gardener,tag=closest_villager,distance=..12] run scoreboard players enable @a[scores={grow_seeds=2}] no
execute if entity @p[scores={grow_seeds=2}] as @a[scores={grow_seeds=2}] at @s if entity @e[tag=gardener,tag=closest_villager,distance=..12] run tellraw @p[scores={grow_seeds=2},distance=..12] ["[",{"selector":"@e[tag=gardener,tag=closest_villager,distance=..12]"},"]"," Alrighty! That will be cost ",{"score":{"name":"melon","objective":"grow_seeds"}}," ",{"text":"Small Amethyst Bud","hoverEvent":{"action":"show_item","contents":"minecraft:small_amethyst_bud"}}," per ",{"text":"Melon Seed","hoverEvent":{"action":"show_item","contents":"minecraft:melon_seeds"}}," you would like me to grow","\n",{"text":"- Okay!","clickEvent":{"action":"run_command","value":"/trigger yes"},"color":"yellow"},"\n",{"text":"- No thank you.","clickEvent":{"action":"run_command","value":"/trigger yes"},"color":"yellow"}]
execute if entity @p[scores={grow_seeds=2..}] as @a[scores={grow_seeds=2..}] at @s if entity @e[tag=gardener,tag=closest_villager,distance=..12] run tag @s add reset_grow_seeds
#Guide dialogue

execute if entity @p[tag=talk_to_villager] as @a[tag=talk_to_villager] at @s as @e[tag=dialogue,tag=guide,tag=closest_villager,distance=..12] run tellraw @p[tag=talk_to_villager,distance=..12] ["[",{"selector":"@s"},"]","Hello ",{"selector":"@p[tag=talk_to_villager,distance=..12]"}," how may I help you today?"]
execute if entity @p[tag=talk_to_villager] as @a[tag=talk_to_villager] at @s as @e[tag=dialogue,tag=guide,tag=closest_villager,distance=..12] run tellraw @p[tag=talk_to_villager,distance=..12] [{"text":"✎ How do I open my player menu?","color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger menu"}},"\n",{"text":"✎ Nothing for now!","color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger bye"}}]

#execute if entity @p[tag=talk_to_villager] as @a[tag=talk_to_villager] at @s as @e[tag=dialogue,tag=guide,tag=closest_villager,distance=..12] at @s facing entity @p[tag=talk_to_villager] eyes run tp @s ~ ~ ~

execute if entity @p[tag=talk_to_villager] as @a[tag=talk_to_villager] run scoreboard players reset @s talk_to_villager
execute if entity @p[tag=talk_to_villager] as @a[tag=talk_to_villager] run tag @s remove talk_to_villager

#
