team modify player_41 prefix ["",{"text":"✌","color":"#10B3C9","clickEvent":{"action":"run_command","value":"/trigger player_41_menu set 1"}}]
execute if entity @s[tag=!personal_menu_show_symbol,tag=personal_menu_show_text] run function core:player/players/player_41/personal_menu_show_text
execute if entity @s[tag=personal_menu_show_symbol,tag=!personal_menu_show_text] run function core:player/players/player_41/personal_menu_show_symbol
team modify player_41 prefix ["",{"text":"✌","color":"#10B3C9","clickEvent":{"action":"run_command","value":"/trigger player_41_menu set 1"}}]