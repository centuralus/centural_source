execute at @s run summon armor_stand ~ ~ ~ {Tags:["selector"],"CustomName":'{"text":""}'}
team join player_2 @e[tag=selector,type=armor_stand]
execute if entity @s[team=player_2,tag=personal_menu_show_spawn,tag=!personal_menu_show_wild] run team modify player_2 prefix ["",{"text":"[⏻]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}},{"text":"[⚙]","clickEvent":{"action":"","value":"/trigger setting set 1"}}]

execute if entity @s[team=player_2,tag=personal_menu_show_spawn,tag=personal_menu_show_wild] run team modify player_2 prefix ["",{"text":"[⏻]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}},{"text":"[☠]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}},{"text":"[⚙]","clickEvent":{"action":"","value":"/trigger setting set 1"}}]
execute if entity @s[team=player_2,tag=!personal_menu_show_spawn,tag=personal_menu_show_wild] run team modify player_2 prefix ["",{"text":"[☠]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}},{"text":"[⚙]","clickEvent":{"action":"","value":"/trigger setting set 1"}}]
tellraw @s[team=player_2] {"selector":"@e[tag=selector,limit=1]"}
execute at @s run kill @e[tag=selector,type=armor_stand]

