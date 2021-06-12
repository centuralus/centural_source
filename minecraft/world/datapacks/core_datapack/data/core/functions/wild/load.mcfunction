scoreboard objectives remove wild
scoreboard objectives add wild trigger ["",{"text":"[ Wild ]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger wild set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Random teleport into the Wild."}]}}]

scoreboard objectives remove wild_token
scoreboard objectives add wild_token trigger ["",{"text":"[ Exchange ]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger wild_token set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Exchange tokens in for Wild Tokens."}]}},{"text":"[ Claim ]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger wild_token set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Claim all unclaimed tokens as Wild Tokens."}]}}]

scoreboard objectives add wild_timer minecraft.custom:minecraft.play_time
