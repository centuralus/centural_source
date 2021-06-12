scoreboard objectives remove jail
scoreboard objectives remove jail
scoreboard objectives add jail trigger ["","[ Jail ]"]
scoreboard objectives add kick trigger ["",{"text":"[ Kick ]","clickEvent":{"action":"run_command","value":"/trigger kick set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Open Kick Menu"}]}},{"color":"red","text":"[ Kick Closest Player ]","clickEvent":{"action":"run_command","value":"/trigger kick set -1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Kick the closest player to you."}]}}]
scoreboard objectives add ban trigger ["","[ Ban ]"]
scoreboard objectives add mute trigger ["","[ Kick ]"]
#
#scoreboard objectives add helper_mode trigger ""
#
