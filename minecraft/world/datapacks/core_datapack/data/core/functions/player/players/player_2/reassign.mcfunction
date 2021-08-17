team modify player_2 prefix ["",{"text":"✌","color":"#10B3C9","clickEvent":{"action":"run_command","value":"/trigger player_2_menu set 1"}}]
summon armor_stand ~ ~ ~ {Tags:["selector"],"CustomName":{"text":""}}
team join player_2 @e[tag=selector]
execute if entity @s[team=player_2,tag=personal_menu_show_spawn] run team modify player_2 prefix [{"text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[team=player_2,tag=personal_menu_show_wild] run team modify player_2 prefix [{"selector":"@e[tag=selector]"},{"text":"[wild]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
kill @e[tag=selector,type=armor_stand]
