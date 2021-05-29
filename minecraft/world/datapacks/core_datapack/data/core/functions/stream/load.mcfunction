scoreboard objectives remove stream
scoreboard objectives add stream trigger [{"text":"[ Watch ]","color":"#44ff22","clickEvent":{"action":"open_url","value":"https://trovo.live/Centural"},"hoverEvent":{"action":"show_text","contents":[{"text":"Watch stream on Trovo"}]}},{"text":"[ Focus ]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger stream set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Focus stream camera where you are looking."}]}},{"text":"[ Detach ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger stream set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Detatch your player view."}]}},{"text":"[ Fireworks ]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger stream set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"Fireworks on stream"}]}},"\n",{"text":"[ Block ]","color":"red","clickEvent":{"action":"run_command","value":"/trigger stream set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"Attempt to Block the stream from casting you. (Note: If a nearby players is being cast you still will appear on stream ~ will work on a solution soon)"}]}},{"text":"[ Allow ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger stream set 6"},"hoverEvent":{"action":"show_text","contents":[{"text":"Allow the stream to cast your player randomly and earn tokens/rewards even when you are not being cast!"}]}},{"text":"[ Unlock Stream Chat ]","color":"#23fee2","clickEvent":{"action":"run_command","value":"/trigger stream set 7"},"hoverEvent":{"action":"show_text","contents":[{"text":"Stake 100 Tokens to unlock Stream Voice Channel in Discord. (Note you will not lose any tokens when you unlock this feature!)"}]}},{"text":"[ Heart ]","color":"red","clickEvent":{"action":"run_command","value":"/trigger stream set 8"},"hoverEvent":{"action":"show_text","contents":[{"text":"Spend 1 token to have a heart particle above your character on stream."}]}}]


scoreboard objectives add follow_x dummy
scoreboard objectives add follow_y dummy
scoreboard objectives add follow_z dummy

tag Bonesdog add camera
scoreboard objectives remove camera_timer
scoreboard objectives add camera_timer minecraft.custom:minecraft.play_time
execute unless entity @e[type=minecraft:area_effect_cloud,tag=camera_hub] at @p[tag=camera] run summon area_effect_cloud ~ ~0.225 ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["camera_hub"]}

scoreboard objectives add stream_timer minecraft.custom:minecraft.play_time
