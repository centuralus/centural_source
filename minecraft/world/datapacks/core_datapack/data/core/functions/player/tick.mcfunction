#execute if entity @e[tag=spawn] as @e[tag=spawn] at @s if entity @p[distance=..16,team=!player,team=!hostile] as @a[distance=..16,team=!player,team=!hostile] run tellraw @s {"text":"You are being put on the player team while near spawn. Relog outside of spawn to switch back to your role for now.","color":"yellow"}
#execute if entity @e[tag=spawn] as @e[tag=spawn] at @s if entity @p[distance=..16,team=!player,team=!hostile] as @a[distance=..16,team=!player,team=!hostile] run tag @s add player

execute if entity @p[team=helper] as @a[team=helper] unless entity @s[scores={player=-2147483648..2147483647}] run scoreboard players enable @s player
execute if entity @p[team=explorer] as @a[team=explorer] unless entity @s[scores={player=-2147483648..2147483647}] run scoreboard players enable @s player
execute if entity @p[team=builder] as @a[team=builder] unless entity @s[scores={player=-2147483648..2147483647}] run scoreboard players enable @s player

execute if entity @p[scores={player=1..}] as @a[scores={player=1..}] run tag @s add player

execute if entity @p[tag=player] as @a[tag=player] run gamemode survival @s

execute if entity @p[tag=player] as @a[tag=player] run team leave @s

execute if entity @p[tag=player] as @a[tag=player] run tag @s add reset_unique

execute if entity @p[tag=player] as @a[tag=player] run tag @s remove player

execute if entity @p[scores={player=1..}] as @a[scores={player=1..}] run scoreboard players reset @s player


#

execute if entity @p as @a unless entity @s[scores={settings=-2147483648..2147483647}] run scoreboard players enable @s settings

execute if entity @p as @a unless entity @s[scores={settings_text=-2147483648..2147483647}] run scoreboard players enable @s settings_text

execute if entity @p as @a unless entity @s[scores={color_spawn_text=-2147483648..2147483647}] run scoreboard players enable @s color_spawn_text
execute if entity @p as @a unless entity @s[scores={prefix=-2147483648..2147483647}] run scoreboard players enable @s prefix
execute if entity @p[scores={prefix=1..}] as @a[scores={prefix=1..}] run tag @s add reset_prefix

execute if entity @p as @a unless entity @s[scores={team_color=-2147483648..2147483647}] run scoreboard players enable @s team_color
execute if entity @p[scores={team_color=1..}] as @a[scores={team_color=1..}] run tag @s add reset_team_color

execute if entity @p run function core:player/generated



execute if entity @p[scores={settings=1..}] as @a[scores={settings=1..}] run tag @s add reset_settings
execute if entity @p[scores={settings=..-1}] as @a[scores={settings=..-1}] run tag @s add reset_settings
execute if entity @p[scores={settings_text=1..}] as @a[scores={settings_text=1..}] run tag @s add reset_settings_text
execute if entity @p[scores={settings_text=..-1}] as @a[scores={settings_text=..-1}] run tag @s add reset_settings_text

execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s add reset_color_spawn_text
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_aqua
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_black
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_blue
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_dark_aqua
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_dark_blue
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_dark_gray
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_dark_green
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_dark_purple
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_dark_red
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_gold
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_gray
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_green
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_light_purple
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_red
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_white
execute if entity @p[scores={color_spawn_text=1..}] as @a[scores={color_spawn_text=1..}] run tag @s remove color_spawn_text_yellow

execute if entity @p[scores={color_spawn_text=2}] as @a[scores={color_spawn_text=2}] run tag @s add color_spawn_text_aqua
execute if entity @p[scores={color_spawn_text=3}] as @a[scores={color_spawn_text=3}] run tag @s add color_spawn_text_black
execute if entity @p[scores={color_spawn_text=4}] as @a[scores={color_spawn_text=4}] run tag @s add color_spawn_text_blue
execute if entity @p[scores={color_spawn_text=5}] as @a[scores={color_spawn_text=5}] run tag @s add color_spawn_text_dark_aqua
execute if entity @p[scores={color_spawn_text=6}] as @a[scores={color_spawn_text=6}] run tag @s add color_spawn_text_dark_blue
execute if entity @p[scores={color_spawn_text=7}] as @a[scores={color_spawn_text=7}] run tag @s add color_spawn_text_dark_gray
execute if entity @p[scores={color_spawn_text=8}] as @a[scores={color_spawn_text=8}] run tag @s add color_spawn_text_dark_green
execute if entity @p[scores={color_spawn_text=9}] as @a[scores={color_spawn_text=9}] run tag @s add color_spawn_text_dark_purple
execute if entity @p[scores={color_spawn_text=10}] as @a[scores={color_spawn_text=10}] run tag @s add color_spawn_text_dark_red
execute if entity @p[scores={color_spawn_text=11}] as @a[scores={color_spawn_text=11}] run tag @s add color_spawn_text_gold
execute if entity @p[scores={color_spawn_text=12}] as @a[scores={color_spawn_text=12}] run tag @s add color_spawn_text_gray
execute if entity @p[scores={color_spawn_text=13}] as @a[scores={color_spawn_text=13}] run tag @s add color_spawn_text_green
execute if entity @p[scores={color_spawn_text=14}] as @a[scores={color_spawn_text=14}] run tag @s add color_spawn_text_light_purple
execute if entity @p[scores={color_spawn_text=15}] as @a[scores={color_spawn_text=15}] run tag @s add color_spawn_text_red
execute if entity @p[scores={color_spawn_text=16}] as @a[scores={color_spawn_text=16}] run tag @s add color_spawn_text_white
execute if entity @p[scores={color_spawn_text=17}] as @a[scores={color_spawn_text=17}] run tag @s add color_spawn_text_yellow


execute if entity @p[scores={settings=1}] as @a[scores={settings=1}] run tag @s add personal_menu_show_spawn
execute if entity @p[scores={settings=-1}] as @a[scores={settings=-1}] run tag @s remove personal_menu_show_spawn
execute if entity @p[scores={settings=2}] as @a[scores={settings=2}] run tag @s add personal_menu_show_wild
execute if entity @p[scores={settings=-2}] as @a[scores={settings=-2}] run tag @s remove personal_menu_show_wild
execute if entity @p[scores={settings=3}] as @a[scores={settings=3}] run tag @s add personal_menu_show_teleport
execute if entity @p[scores={settings=-3}] as @a[scores={settings=-3}] run tag @s remove personal_menu_show_teleport

execute if entity @p[scores={settings=4}] as @a[scores={settings=4}] run tag @s add personal_menu_show_set_return
execute if entity @p[scores={settings=-4}] as @a[scores={settings=-4}] run tag @s remove personal_menu_show_set_return

execute if entity @p[scores={settings=5}] as @a[scores={settings=5}] run tag @s add personal_menu_show_return
execute if entity @p[scores={settings=-5}] as @a[scores={settings=-5}] run tag @s remove personal_menu_show_return

execute if entity @p[scores={settings=6}] as @a[scores={settings=6}] run tag @s add personal_menu_show_set_home
execute if entity @p[scores={settings=-6}] as @a[scores={settings=-6}] run tag @s remove personal_menu_show_set_home

execute if entity @p[scores={settings=7}] as @a[scores={settings=7}] run tag @s add personal_menu_show_home
execute if entity @p[scores={settings=-7}] as @a[scores={settings=-7}] run tag @s remove personal_menu_show_home



execute if entity @p[tag=reset_settings] as @a[tag=reset_settings] run scoreboard players reset @s settings
execute if entity @p[tag=reset_settings] as @a[tag=reset_settings] run tag @s remove reset_settings

execute if entity @p[tag=reset_settings_text] as @a[tag=reset_settings_text] run scoreboard players reset @s settings_text
execute if entity @p[tag=reset_settings_text] as @a[tag=reset_settings_text] run tag @s remove reset_settings_text

execute if entity @p[tag=reset_color_spawn_text] as @a[tag=reset_color_spawn_text] run scoreboard players reset @s color_spawn_text
execute if entity @p[tag=reset_color_spawn_text] as @a[tag=reset_color_spawn_text] run tag @s remove reset_color_spawn_text


execute if entity @p[tag=reset_prefix] as @a[tag=reset_prefix] run scoreboard players reset @s prefix
execute if entity @p[tag=reset_prefix] as @a[tag=reset_prefix] run tag @s remove reset_prefix


execute if entity @p[tag=reset_team_color] as @a[tag=reset_team_color] run scoreboard players reset @s team_color
execute if entity @p[tag=reset_team_color] as @a[tag=reset_team_color] run tag @s remove reset_team_color




#Preffix Buffs


#flame buff
execute if entity @p[scores={prefix_storage=2,buff_timer=220..}] as @p[scores={prefix_storage=2,buff_timer=220..}] run tag @s add flame_buff
execute if entity @p[scores={prefix_storage=2,buff_timer=220..}] as @p[scores={prefix_storage=2,buff_timer=220..}] run scoreboard players reset @s buff_timer
execute if entity @p[tag=flame_buff] as @a[tag=flame_buff] run effect give @s minecraft:fire_resistance 8 1 true

execute if entity @p[tag=flame_buff] as @a[tag=flame_buff] at @s positioned ~ ~3 ~ run summon armor_stand ~ ~ ~ {Invisible:1b,Marker:1b,Tags:["flame_buff_animation"]}
execute if entity @p[tag=flame_buff] as @a[tag=flame_buff] run tag @s add animate_flame_buff
execute if entity @p[tag=flame_buff] as @a[tag=flame_buff] run scoreboard players reset @s animate_timer
execute if entity @p[tag=flame_buff] as @a[tag=flame_buff] run title @s actionbar {"text":"🔥","color":"#F7630C"}
execute if entity @p[tag=flame_buff] as @a[tag=flame_buff] run tag @s remove flame_buff

execute if entity @p[tag=animate_flame_buff] as @a[tag=animate_flame_buff] at @s positioned ~ ~3 ~ run function core:animate/sphere/animate
execute if entity @p[tag=animate_flame_buff,scores={animate_timer=120..}] as @a[tag=animate_flame_buff,scores={animate_timer=120..}] run tag @s remove animate_flame_buff


#water buff
execute if entity @p[scores={prefix_storage=3,buff_timer=220..}] as @p[scores={prefix_storage=3,buff_timer=220..}] run tag @s add water_buff
execute if entity @p[scores={prefix_storage=3,buff_timer=220..}] as @p[scores={prefix_storage=3,buff_timer=220..}] run scoreboard players reset @s buff_timer
execute if entity @p[tag=water_buff] as @a[tag=water_buff] run effect give @s minecraft:water_breathing 7 1 true
execute if entity @p[tag=water_buff] as @a[tag=water_buff] at @s positioned ~ ~3 ~ run function core:particle/water_buff
execute if entity @p[tag=water_buff] as @a[tag=water_buff] run title @s actionbar {"text":"🌊","color":"#23CBF6"}
execute if entity @p[tag=water_buff] as @a[tag=water_buff] run tag @s remove water_buff

#strength buff
execute if entity @p[scores={prefix_storage=4,buff_timer=270..}] as @p[scores={prefix_storage=4,buff_timer=270..}] run tag @s add strength_buff
execute if entity @p[scores={prefix_storage=4,buff_timer=270..}] as @p[scores={prefix_storage=4,buff_timer=270..}] run scoreboard players reset @s buff_timer
execute if entity @p[tag=strength_buff] as @a[tag=strength_buff] run effect give @s minecraft:strength 2 3 true
execute if entity @p[tag=strength_buff] as @a[tag=strength_buff] at @s positioned ~ ~1 ~ run function core:particle/strength_buff
execute if entity @p[tag=strength_buff] as @a[tag=strength_buff] run title @s actionbar {"text":"🗡","color":"#727273"}
execute if entity @p[tag=strength_buff] as @a[tag=strength_buff] run tag @s remove strength_buff


#arrow buff
execute if entity @p[scores={prefix_storage=5,buff_timer=120..}] as @p[scores={prefix_storage=5,buff_timer=120..}] run tag @s add arrow_buff
execute if entity @p[scores={prefix_storage=5,buff_timer=120..}] as @p[scores={prefix_storage=5,buff_timer=120..}] run scoreboard players reset @s buff_timer

execute if entity @p[tag=arrow_buff] as @p[tag=arrow_buff] run scoreboard players reset @s arrow_count

execute if entity @p[tag=arrow_buff] as @p[tag=arrow_buff] at @s if entity @e[type=arrow,distance=..8,nbt={inGround:1b}] as @e[type=arrow,distance=..8,nbt={inGround:1b}] at @s run scoreboard players add @p[tag=arrow_buff] arrow_count 1
execute if entity @p[tag=arrow_buff] as @p[tag=arrow_buff] at @s if entity @e[type=arrow,distance=..8,nbt={inGround:1b}] as @e[type=arrow,distance=..8,nbt={inGround:1b}] at @s run kill @e[type=arrow,distance=..8,nbt={inGround:1b}]


execute if entity @p[tag=arrow_buff,scores={arrow_count=1..}] as @a[tag=arrow_buff,scores={arrow_count=1..}] at @s run summon item ~ ~ ~ {Tags:["arrow_pickup"],PickupDelay:32767,Item:{id:"minecraft:arrow",Count:1b}}
execute if entity @e[tag=arrow_pickup] as @e[tag=arrow_pickup] at @s store result entity @s Count int 1 run scoreboard players get @p[tag=arrow_buff] arrow_count
execute if entity @e[tag=arrow_pickup] as @e[tag=arrow_pickup] at @s run data modify entity @s PickupDelay set value 0
execute if entity @e[tag=arrow_pickup] as @e[tag=arrow_pickup] run tag @s remove arrow_pickup


execute if entity @p[tag=arrow_buff] as @a[tag=arrow_buff] at @s positioned ~ ~3 ~ run function core:particle/arrow_buff
execute if entity @p[tag=arrow_buff] as @a[tag=arrow_buff] run title @s actionbar {"text":"🏹","color":"#722D09"}
execute if entity @p[tag=arrow_buff] as @a[tag=arrow_buff] run tag @s remove arrow_buff




#lightning buff

execute if entity @p[scores={prefix_storage=11,buff_timer=500..,sneak_timer=1..20}] as @a[scores={prefix_storage=11,buff_timer=500..,sneak_timer=1..20}] at @s anchored eyes run particle end_rod ^ ^ ^5 0 0 0 0.01 20 force
execute if entity @p[scores={prefix_storage=11,buff_timer=520..}] as @a[scores={prefix_storage=11,buff_timer=520..}] run tag @s add lightning_buff
execute if entity @p[scores={prefix_storage=11,buff_timer=520..,sneak_timer=20..}] as @a[scores={prefix_storage=11,buff_timer=520..,sneak_timer=20..}] run scoreboard players reset @s buff_timer

execute if entity @p[tag=lightning_buff,scores={sneak_timer=20..}] as @a[tag=lightning_buff,scores={sneak_timer=20..}] at @s anchored eyes positioned ^ ^ ^5 if entity @p[distance=..1] as @a[distance=..1] run tellraw @s {"text":"You have been stunned!","color":"yellow"}
execute if entity @p[tag=lightning_buff,scores={sneak_timer=20..}] as @a[tag=lightning_buff,scores={sneak_timer=20..}] at @s anchored eyes positioned ^ ^ ^5 if entity @p[distance=..1] as @a[distance=..1] run effect give @s minecraft:slowness 2 10 true
execute if entity @p[tag=lightning_buff,scores={sneak_timer=20..}] as @a[tag=lightning_buff,scores={sneak_timer=20..}] at @s anchored eyes run summon lightning_bolt ^ ^ ^5
#execute if entity @p[tag=lightning_buff] as @a[tag=lightning_buff] at @s positioned ~ ~3 ~ run function core:particle/lightning_buff
execute if entity @p[tag=lightning_buff] as @a[tag=lightning_buff] run title @s actionbar {"text":"⚡","color":"#FFC83D"}
execute if entity @p[tag=lightning_buff,scores={sneak_timer=20..}] as @a[tag=lightning_buff,scores={sneak_timer=20..}] run tag @s remove lightning_buff
execute if entity @p[scores={sneak_timer=20..}] as @a[scores={sneak_timer=20..}] run scoreboard players reset @s sneak_timer

#pickaxe_buff haste
execute if entity @p[scores={prefix_storage=12,buff_timer=220..}] as @a[scores={prefix_storage=12,buff_timer=220..}] run tag @s add pickaxe_buff
execute if entity @p[scores={prefix_storage=12,buff_timer=220..}] as @a[scores={prefix_storage=12,buff_timer=220..}] run scoreboard players reset @s buff_timer
execute if entity @p[tag=pickaxe_buff] as @a[tag=pickaxe_buff] run effect give @s minecraft:haste 8 1 true
#execute if entity @p[tag=pickaxe_buff] as @a[tag=pickaxe_buff] at @s positioned ~ ~3 ~ run function core:particle/pickaxe_buff
execute if entity @p[tag=pickaxe_buff] as @a[tag=pickaxe_buff] run title @s actionbar {"text":"⛏","color":"#0F0F0F"}
execute if entity @p[tag=pickaxe_buff] as @a[tag=pickaxe_buff] run tag @s remove pickaxe_buff

#heart buff_timer
execute if entity @p[scores={prefix_storage=14,buff_timer=420..}] as @a[scores={prefix_storage=14,buff_timer=420..}] run tag @s add heart_buff
execute if entity @p[scores={prefix_storage=14,buff_timer=420..}] as @a[scores={prefix_storage=14,buff_timer=420..}] run scoreboard players reset @s buff_timer
execute if entity @p[tag=heart_buff] as @a[tag=heart_buff] run effect give @s minecraft:instant_health 1 1 true
#execute if entity @p[tag=heart_buff] as @a[tag=heart_buff] at @s positioned ~ ~3 ~ run function core:particle/heart_buff
execute if entity @p[tag=heart_buff] as @a[tag=heart_buff] run title @s actionbar {"text":"❤","color":"#F03A17"}
execute if entity @p[tag=heart_buff] as @a[tag=heart_buff] run tag @s remove heart_buff

#shield_buff

execute if entity @p[scores={prefix_storage=16,buff_timer=0..160}] as @a[scores={prefix_storage=16,buff_timer=0..160}] at @s anchored feet align x align y align z positioned ~.25 ~ ~.25 facing entity @s feet run function core:animate/defence_buff/animate
execute if entity @p[scores={prefix_storage=16,buff_timer=520..}] as @a[scores={prefix_storage=16,buff_timer=520..}] run tag @s add shield_buff
execute if entity @p[scores={prefix_storage=16,buff_timer=520..}] as @a[scores={prefix_storage=16,buff_timer=520..}] run scoreboard players reset @s buff_timer
execute if entity @p[tag=shield_buff] as @a[tag=shield_buff] run effect give @s minecraft:resistance 8 1 true
execute if entity @p[tag=shield_buff] as @a[tag=shield_buff] run title @s actionbar {"text":"⛨","color":"#F8F9FA"}
execute if entity @p[tag=shield_buff] as @a[tag=shield_buff] run tag @s remove shield_buff


#slow_falling_buff
execute if entity @p[scores={prefix_storage=17,buff_timer=90..}] as @a[scores={prefix_storage=17,buff_timer=90..}] run tag @s add slow_falling_buff
execute if entity @p[scores={prefix_storage=17,buff_timer=90..}] as @a[scores={prefix_storage=17,buff_timer=90..}] run scoreboard players reset @s buff_timer
execute if entity @p[tag=slow_falling_buff] as @a[tag=slow_falling_buff] run effect give @s minecraft:slow_falling 3 1 true
execute if entity @p[tag=slow_falling_buff] as @a[tag=slow_falling_buff] run title @s actionbar {"text":"☔","color":"#886CE4"}
execute if entity @p[tag=slow_falling_buff] as @a[tag=slow_falling_buff] run tag @s remove slow_falling_buff



#speed_buff

execute if entity @p[scores={prefix_storage=18,buff_timer=220..}] as @a[scores={prefix_storage=18,buff_timer=220..}] run tag @s add speed_buff
execute if entity @p[scores={prefix_storage=18,buff_timer=220..}] as @a[scores={prefix_storage=18,buff_timer=220..}] run scoreboard players reset @s buff_timer
execute if entity @p[tag=speed_buff] as @a[tag=speed_buff] run effect give @s minecraft:speed 8 1 true
execute if entity @p[tag=speed_buff] as @a[tag=speed_buff] run title @s actionbar {"text":"[❦]","color":"#149414"}
execute if entity @p[tag=speed_buff] as @a[tag=speed_buff] run tag @s remove speed_buff


#End Prefix Buffs
