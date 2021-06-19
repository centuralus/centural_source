scoreboard objectives add spawn trigger ["",{"text":"[ Spawn ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to Spawn","color":"yellow"}]}}]
team add spawn [{"text":"🛡","color":"green"},{"text":"[ Spawn ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to Spawn","color":"yellow"}]}}]
team modify spawn prefix {"text":"🛡","color":"green","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to Spawn","color":"yellow"}]}}
team modify spawn friendlyFire false
