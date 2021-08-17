team modify player_2 prefix ["",{"text":"✌","color":"#10B3C9","clickEvent":{"action":"run_command","value":"/trigger player_2_menu set 1"}}]
execute at @s run summon armor_stand ~ ~ ~ {Tags:["selector"],"CustomName":'{"text":""}'}
team join player_2 @e[tag=selector,type=armor_stand]
execute if entity @s[team=player_2,tag=personal_menu_show_spawn] run team modify player_2 prefix [{"text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
team join player_2 @e[tag=selector,type=armor_stand]
execute if entity @s[team=player_2,tag=personal_menu_show_wild] run team modify player_2 prefix [{"selector":"@e[tag=selector,limit=1]"},{"text":"[wild]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
tellraw @s[team=player_2] {"selector":"@e[tag=selector,limit=1]"}
