scoreboard objectives remove locate
scoreboard objectives add locate trigger ["[ Locate ]",{"text":"[ Bastion Remnant ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger locate set 2"}},{"text":"[ Buried Treasure ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger locate set 3"}},{"text":"[ Desert Pyramid ]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger locate set 4"}}]