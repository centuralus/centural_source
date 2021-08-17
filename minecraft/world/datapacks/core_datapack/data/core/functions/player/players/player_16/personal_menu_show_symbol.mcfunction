scoreboard objectives add temp_count dummy
scoreboard players set @s temp_count 0
team add spawn_text [{"text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
team modify spawn_text prefix ["",{"color":"aqua","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_aqua] run team modify spawn_text prefix ["",{"color":"aqua","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_black] run team modify spawn_text prefix ["",{"color":"black","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_blue] run team modify spawn_text prefix ["",{"color":"blue","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_aqua] run team modify spawn_text prefix ["",{"color":"dark_aqua","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_blue] run team modify spawn_text prefix ["",{"color":"dark_blue","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_gray] run team modify spawn_text prefix ["",{"color":"dark_gray","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_green] run team modify spawn_text prefix ["",{"color":"dark_green","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_purple] run team modify spawn_text prefix ["",{"color":"dark_purple","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_dark_red] run team modify spawn_text prefix ["",{"color":"dark_red","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_gold] run team modify spawn_text prefix ["",{"color":"gold","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_gray] run team modify spawn_text prefix ["",{"color":"gray","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_green] run team modify spawn_text prefix ["",{"color":"green","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_light_purple] run team modify spawn_text prefix ["",{"color":"light_purple","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_red] run team modify spawn_text prefix ["",{"color":"red","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_white] run team modify spawn_text prefix ["",{"color":"white","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
execute if entity @s[tag=color_spawn_text_yellow] run team modify spawn_text prefix ["",{"color":"yellow","text":"[Spawn]","clickEvent":{"action":"run_command","value":"/trigger spawn set 1"}}]
team add wild_text [{"text":"[Wild]","clickEvent":{"action":"run_command","value":"/trigger wild set 2"}}]
team modify wild_text prefix ["",{"text":"[Wild]","clickEvent":{"action":"run_command","value":"/trigger wild set 2"}}]
team add teleport_text [{"text":"[Teleport]","clickEvent":{"action":"run_command","value":"/trigger teleport set 1"}}]
team modify teleport_text prefix ["",{"text":"[Teleport]","clickEvent":{"action":"run_command","value":"/trigger teleport set 1"}}]
team add set_return_text [{"text":"[Set Return]","clickEvent":{"action":"run_command","value":"/trigger set_return set 1"}}]
team modify set_return_text prefix ["",{"text":"[Set Return]","clickEvent":{"action":"run_command","value":"/trigger set_return set 1"}}]
team add return_text [{"text":"[Return]","clickEvent":{"action":"run_command","value":"/trigger return set 1"}}]
team modify return_text prefix ["",{"text":"[Return]","clickEvent":{"action":"run_command","value":"/trigger return set 1"}}]
team add set_home_text [{"text":"[Set Home]","clickEvent":{"action":"run_command","value":"/trigger set_home set 1"}}]
team modify set_home_text prefix ["",{"text":"[Set Home]","clickEvent":{"action":"run_command","value":"/trigger set_home set 1"}}]
team add home_text [{"text":"[Home]","clickEvent":{"action":"run_command","value":"/trigger home set 1"}}]
team modify home_text prefix ["",{"text":"[Home]","clickEvent":{"action":"run_command","value":"/trigger home set 1"}}]
team add settings_text [{"text":"[Settings]","clickEvent":{"action":"run_command","value":"/trigger settings set 1"}}]
team modify settings_text prefix ["",{"text":"[Settings]","clickEvent":{"action":"run_command","value":"/trigger settings_text set 1"}}]
execute if entity @s[team=player_16,tag=personal_menu_show_spawn] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"spawn_text",Tags:["personal_menu_show_spawn"],CustomName:'{"text":""}'}
execute if entity @s[team=player_16,tag=personal_menu_show_spawn] run scoreboard players add @s temp_count 5
execute if entity @s[team=player_16,tag=personal_menu_show_wild] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"wild_text",Tags:["personal_menu_show_wild"],CustomName:'{"text":""}'}
execute if entity @s[team=player_16,tag=personal_menu_show_wild] run scoreboard players add @s temp_count 3
execute if entity @s[team=player_16,tag=personal_menu_show_teleport] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"teleport_text",Tags:["personal_menu_show_teleport"],CustomName:'{"text":""}'}
execute if entity @s[team=player_16,tag=personal_menu_show_teleport] run scoreboard players add @s temp_count 7
execute if entity @s[team=player_16,tag=personal_menu_show_set_return] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"set_return_text",Tags:["personal_menu_show_set_return"],CustomName:'{"text":""}'}
execute if entity @s[team=player_16,tag=personal_menu_show_set_return] run scoreboard players add @s temp_count 9
execute if entity @s[team=player_16,tag=personal_menu_show_return] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"return_text",Tags:["personal_menu_show_return"],CustomName:'{"text":""}'}
execute if entity @s[team=player_16,tag=personal_menu_show_return] run scoreboard players add @s temp_count 5
execute if entity @s[team=player_16,tag=personal_menu_show_set_home] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"set_home_text",Tags:["personal_menu_show_set_home"],CustomName:'{"text":""}'}
execute if entity @s[team=player_16,tag=personal_menu_show_set_home] run scoreboard players add @s temp_count 7
execute if entity @s[team=player_16,tag=personal_menu_show_home] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"home_text",Tags:["personal_menu_show_home"],CustomName:'{"text":""}'}
execute if entity @s[team=player_16,tag=personal_menu_show_home] run scoreboard players add @s temp_count 7
execute if entity @s[team=player_16] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Team:"settings_text",Tags:["personal_menu_show_settings"],CustomName:'{"text":""}'}
execute at @s run tellraw @s[team=player_16,scores={temp_count=0..33}] [{"selector":"@e[tag=personal_menu_show_spawn,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_wild,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_teleport,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_set_return,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_return,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_set_home,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_home,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_settings,type=armor_stand,limit=1,distance=..1]"}]
execute at @s run tellraw @s[team=player_16,scores={temp_count=34..}] [{"selector":"@e[tag=personal_menu_show_spawn,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_wild,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_teleport,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_set_return,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_return,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_set_home,type=armor_stand,limit=1,distance=..1]"},"\n",{"selector":"@e[tag=personal_menu_show_home,type=armor_stand,limit=1,distance=..1]"},{"selector":"@e[tag=personal_menu_show_settings,type=armor_stand,limit=1,distance=..1]"}]
team remove spawn_text
team remove wild_text
execute at @s run kill @e[tag=personal_menu_show_spawn,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_wild,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_teleport,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_set_return,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_return,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_set_home,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_home,type=armor_stand]
execute at @s run kill @e[tag=personal_menu_show_settings,type=armor_stand]
scoreboard objectives remove temp_count
#execute at @s run kill @e[tag=selector,type=armor_stand]
