scoreboard objectives remove spawn
scoreboard objectives add spawn trigger ["",{"text":"[ Spawn ]","clickEvent":{"action":"run_command","value":"/trigger spawn"},"color":"aqua"}]
scoreboard objectives remove spawn_timer
scoreboard objectives add spawn_timer minecraft.custom:minecraft.play_time
