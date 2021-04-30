
scoreboard objectives remove difficulty
scoreboard objectives add difficulty trigger ["",{"text":"[ Peaceful ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger difficulty set 2"}},{"text":"[ Easy ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger difficulty set 3"}},{"text":"[ Normal ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger difficulty set 4"}},{"text":"[ Hard ]","color":"red","clickEvent":{"action":"run_command","value":"/trigger difficulty set 5"}},{"text":"[ Prefference ]","color":"white","clickEvent":{"action":"run_command","value":"/trigger difficulty set 6"}}]
scoreboard players set %difficulty difficulty 4
scoreboard players set %peaceful difficulty 2
scoreboard players set %easy difficulty 3
scoreboard players set %normal difficulty 4
scoreboard players set %hard difficulty 5
difficulty normal
