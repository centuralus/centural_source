
execute as @a[team=helper] unless entity @s[scores={kick=-2147483648..2147483647}] run scoreboard players enable @s kick
execute as @a[team=helper] unless entity @s[scores={jail=-2147483648..2147483647}] run scoreboard players enable @s jail
execute as @a[team=helper] unless entity @s[scores={mute=-2147483648..2147483647}] run scoreboard players enable @s mute
execute as @a[team=helper] unless entity @s[scores={ban=-2147483648..2147483647}] run scoreboard players enable @s ban

execute if entity @p[team=helper,scores={kick=1..}] as @a[team=helper,scores={kick=1..}] run tag @s add reset_kick
execute if entity @p[team=helper,scores={jail=1..}] as @a[team=helper,scores={jail=1..}] run tag @s add reset_jail
execute if entity @p[team=helper,scores={mute=1..}] as @a[team=helper,scores={mute=1..}] run tag @s add reset_mute
execute if entity @p[team=helper,scores={ban=1..}] as @a[team=helper,scores={ban=1..}] run tag @s add reset_ban


execute if entity @p[team=helper,scores={kick=1}] as @a[team=helper,scores={kick=1}] run tag @s add kick_menu
execute if entity @p[team=helper,scores={kick=2..}] as @a[team=helper,scores={kick=2..}] run function core:role/helper/kick_player

#

#

#
execute if entity @p[team=helper,scores={ban=1}] as @a[team=helper,scores={ban=1}] run tag @s add ban_menu
execute if entity @p[team=helper,scores={ban=2..}] as @a[team=helper,scores={ban=2..}] run function core:role/helper/ban_player


#
execute if entity @p[tag=kick,tag=kicked] as @a[tag=kick,tag=kicked] run tag @s remove kick
execute if entity @p[tag=kicked] as @a[tag=kicked] run tag @s remove kicked
execute if entity @p[tag=kick] as @a[tag=kick] run tag @s add kicked
execute if entity @p[tag=kick] as @a[tag=kick] run kick @s "You have been kicked."

#
execute if entity @p[tag=ban,tag=banned] as @a[tag=ban,tag=banned] run tag @s remove ban
execute if entity @p[tag=banned] as @a[tag=banned] run tag @s remove banned
execute if entity @p[tag=ban] as @a[tag=ban] run tag @s add banned
execute if entity @p[tag=ban] as @a[tag=ban] run ban @a[tag=ban] "You have been banned. Visit https://discord.gg/dnwDqDKpd9 to appeal your ban."


execute if entity @p[team=helper,tag=kick_menu] as @a[team=helper,tag=kick_menu] run tellraw @s {"text":"Click a player name from the list below.","color":"yellow"}
#;kick_menu
execute if entity @p[team=helper,tag=kick_menu] as @a[team=helper,tag=kick_menu] run tag @s remove kick_menu

execute if entity @p[team=helper,scores={kick=-1}] as @a[team=helper,scores={kick=-1}] at @s run kick @p[team=player,distance=..5] "A helper has kicked you from the server. Please rejoin and ask for more information."

#
execute if entity @p[team=helper,tag=ban_menu] as @a[team=helper,tag=ban_menu] run tellraw @s {"text":"Click a player name from the list below. (WARNING: You cannot unban as a helper currently)","color":"yellow"}
#;ban_menu
execute if entity @p[team=helper,tag=ban_menu] as @a[team=helper,tag=ban_menu] run tag @s remove ban_menu


#execute
execute if entity @p[tag=mute] as @a[tag=mute] at @s positioned ~ ~3 ~ unless entity @e[tag=mute,type=armor_stand,distance=0] at @e[tag=mute,type=armor_stand,limit=1] positioned ~ ~-3 ~ run tp @s ~ ~ ~

execute as @a[team=helper] unless entity @s[scores={mute=-2147483648..2147483647}] run scoreboard players enable @s mute

execute if entity @p[team=helper,scores={mute=1..}] as @a[team=helper,scores={mute=1..}] run tag @s add reset_mute

execute if entity @p[team=helper,scores={mute=2}] as @a[team=helper,scores={mute=2}] at @s run tag @p[team=player,distance=..5] add mute


execute if entity @p[team=helper,tag=reset_kick] as @a[team=helper,tag=reset_kick] run scoreboard players reset @s kick
execute if entity @p[team=helper,tag=reset_kick] as @a[team=helper,tag=reset_kick] run tag @s remove reset_kick

execute if entity @p[team=helper,tag=reset_jail] as @a[team=helper,tag=reset_jail] run scoreboard players reset @s jail
execute if entity @p[team=helper,tag=reset_jail] as @a[team=helper,tag=reset_jail] run tag @s remove reset_jail

execute if entity @p[team=helper,tag=reset_mute] as @a[team=helper,tag=reset_mute] run scoreboard players reset @s mute
execute if entity @p[team=helper,tag=reset_mute] as @a[team=helper,tag=reset_mute] run tag @s remove reset_mute

execute if entity @p[team=helper,tag=reset_ban] as @a[team=helper,tag=reset_ban] run scoreboard players reset @s ban
execute if entity @p[team=helper,tag=reset_ban] as @a[team=helper,tag=reset_ban] run tag @s remove reset_ban
