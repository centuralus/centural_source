scoreboard objectives remove token
scoreboard objectives add token trigger ["",{"text":"[ Claim Walk Tokens ]","clickEvent":{"action":"run_command","value":"/trigger token set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Claim all your rewards as cold hard tokens."}]},"color":"green"}]

scoreboard objectives add walk_token minecraft.custom:minecraft.walk_one_cm ["","[ Walk Token ]"]

scoreboard objectives add token_count dummy ["","[ Toke Count ]"]

scoreboard objectives add token_result dummy ["","[ Token Result ]"]

