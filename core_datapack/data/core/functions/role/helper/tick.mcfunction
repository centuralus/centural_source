
execute as @a[team=helper] unless entity @s[scores={kick=-2147483648..2147483647}] run scoreboard players enable @s kick

execute if entity @p[team=helper,scores={kick=1..}] as @a[team=helper,scores={kick=1..}] run tag @s add reset_kick

execute if entity @p[team=helper,scores={kick=2}] as @a[team=helper,scores={kick=2}] at @s run kick @p[team=player,distance=..5] "A helper has kicked you from the server. Please rejoin and ask for more information."

execute if entity @p[team=helper,tag=reset_kick] as @a[team=helper,tag=reset_kick] run scoreboard players reset @s kick

execute if entity @p[team=helper,tag=reset_kick] as @a[team=helper,tag=reset_kick] run tag @s remove reset_kick


#execute
execute if entity @p[tag=mute] as @a[tag=mute] at @s positioned ~ ~3 ~ unless entity @e[tag=mute,type=armor_stand,distance=0] at @e[tag=mute,type=armor_stand,limit=1] positioned ~ ~-3 ~ run tp @s ~ ~ ~

execute as @a[team=helper] unless entity @s[scores={mute=-2147483648..2147483647}] run scoreboard players enable @s mute

execute if entity @p[team=helper,scores={mute=1..}] as @a[team=helper,scores={mute=1..}] run tag @s add reset_mute

execute if entity @p[team=helper,scores={mute=2}] as @a[team=helper,scores={mute=2}] at @s run tag @p[team=player,distance=..5] add mute

execute if entity @p[team=helper,tag=reset_mute] as @a[team=helper,tag=reset_mute] run scoreboard players reset @s mute

execute if entity @p[team=helper,tag=reset_mute] as @a[team=helper,tag=reset_mute] run tag @s remove reset_mute