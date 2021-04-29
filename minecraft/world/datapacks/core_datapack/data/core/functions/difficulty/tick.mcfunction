execute as @a unless entity @s[scores={difficulty_timer=0..}] unless entity @s[scores={difficulty=-2147483648..2147483647}] run scoreboard players enable @s difficulty

execute if entity @p[scores={difficulty=2..}] as @a[scores={difficulty=2..}] unless entity @s[scores={difficulty_timer=0..}] run scoreboard objectives add difficulty_timer minecraft.custom:minecraft.play_time

execute if entity @p[scores={difficulty=2}] as @a[scores={difficulty=2}] run tellraw @a[scores={difficulty_timer=1}] [{"selector":"@s"}," would like to set the difficulty to Peaceful.","\n",{"text":"To change difficulty all players must click here to accept.","clickEvent":{"action":"run_command","value":"/trigger difficulty set 2"}}]
execute if entity @p[scores={difficulty=2}] as @a[scores={difficulty=2}] unless entity @p[scores={difficulty=..1}] unless entity @p[scores={difficulty=3..}] run difficulty peaceful
execute if entity @p[scores={difficulty=2}] as @a[scores={difficulty=2}] unless entity @p[scores={difficulty=..1}] unless entity @p[scores={difficulty=3..}] run tellraw @a {"text":"Difficulty set to peaceful","color":"yellow"}
execute if entity @p[scores={difficulty=2}] as @a[scores={difficulty=2}] unless entity @p[scores={difficulty=..1}] unless entity @p[scores={difficulty=3..}] run tag @a add reset_difficulty
execute if entity @p[scores={difficulty=2}] as @a[scores={difficulty=2}] if entity @s[scores={difficulty_timer=250..}] run tellraw @s "Canceled change in difficulty"
execute if entity @p[scores={difficulty=2}] as @a[scores={difficulty=2}] if entity @s[scores={difficulty_timer=250..}] run tag @s add reset_difficulty

execute if entity @p[scores={difficulty=3}] as @a[scores={difficulty=3}] run tellraw @a[scores={difficulty_timer=1}] [{"selector":"@s"}," would like to set the difficulty to Easy.","\n",{"text":"To change difficulty all players must click here to accept.","clickEvent":{"action":"run_command","value":"/trigger difficulty set 3"}}]
execute if entity @p[scores={difficulty=3}] as @a[scores={difficulty=3}] unless entity @p[scores={difficulty=..2}] unless entity @p[scores={difficulty=4..}] run difficulty easy
execute if entity @p[scores={difficulty=3}] as @a[scores={difficulty=3}] unless entity @p[scores={difficulty=..2}] unless entity @p[scores={difficulty=4..}] run tellraw @a {"text":"Difficulty set to easy","color":"yellow"}
execute if entity @p[scores={difficulty=3}] as @a[scores={difficulty=3}] unless entity @p[scores={difficulty=..2}] unless entity @p[scores={difficulty=4..}] run tag @a add reset_difficulty
execute if entity @p[scores={difficulty=3}] as @a[scores={difficulty=3}] if entity @s[scores={difficulty_timer=250..}] run tellraw @s "Canceled change in difficulty"
execute if entity @p[scores={difficulty=3}] as @a[scores={difficulty=3}] if entity @s[scores={difficulty_timer=250..}] run tag @s add reset_difficulty

execute if entity @p[scores={difficulty=4}] as @a[scores={difficulty=4}] run tellraw @a[scores={difficulty_timer=1}] [{"selector":"@s"}," would like to set the difficulty to Normal.","\n",{"text":"To change difficulty all players must click here to accept.","clickEvent":{"action":"run_command","value":"/trigger difficulty set 4"}}]
execute if entity @p[scores={difficulty=4}] as @a[scores={difficulty=4}] unless entity @p[scores={difficulty=..3}] unless entity @p[scores={difficulty=5..}] run difficulty normal
execute if entity @p[scores={difficulty=4}] as @a[scores={difficulty=4}] unless entity @p[scores={difficulty=..3}] unless entity @p[scores={difficulty=5..}] run tellraw @a {"text":"Difficulty set to normal","color":"yellow"}
execute if entity @p[scores={difficulty=4}] as @a[scores={difficulty=4}] unless entity @p[scores={difficulty=..3}] unless entity @p[scores={difficulty=5..}] run tag @a add reset_difficulty
execute if entity @p[scores={difficulty=4}] as @a[scores={difficulty=4}] if entity @s[scores={difficulty_timer=250..}] run tellraw @s "Canceled change in difficulty"
execute if entity @p[scores={difficulty=4}] as @a[scores={difficulty=4}] if entity @s[scores={difficulty_timer=250..}] run tag @s add reset_difficulty

execute if entity @p[scores={difficulty=5}] as @a[scores={difficulty=5}] run tellraw @a[scores={difficulty_timer=1}] [{"selector":"@s"}," would like to set the difficulty to Normal.","\n",{"text":"To change difficulty all players must click here to accept.","clickEvent":{"action":"run_command","value":"/trigger difficulty set 4"}}]
execute if entity @p[scores={difficulty=5}] as @a[scores={difficulty=5}] unless entity @p[scores={difficulty=..4}] unless entity @p[scores={difficulty=6..}] run difficulty normal
execute if entity @p[scores={difficulty=5}] as @a[scores={difficulty=5}] unless entity @p[scores={difficulty=..4}] unless entity @p[scores={difficulty=6..}] run tellraw @a {"text":"Difficulty set to normal","color":"yellow"}
execute if entity @p[scores={difficulty=5}] as @a[scores={difficulty=5}] unless entity @p[scores={difficulty=..4}] unless entity @p[scores={difficulty=6..}] run tag @a add reset_difficulty
execute if entity @p[scores={difficulty=5}] as @a[scores={difficulty=5}] if entity @s[scores={difficulty_timer=250..}] run tellraw @s "Canceled change in difficulty"
execute if entity @p[scores={difficulty=5}] as @a[scores={difficulty=5}] if entity @s[scores={difficulty_timer=250..}] run tag @s add reset_difficulty

execite if entity @p[scores={difficulty_timer=250..}] as @a[scores={difficulty_timer=250..}] run tag @s add reset_difficulty


execute if entity @p[scores={difficulty=..-1}] as @a[scores={difficulty=..-1}] run scoreboard players reset @s difficulty
execute if entity @p[scores={difficulty=1}] as @a[scores={difficulty=1}] run scoreboard players reset @s difficulty
execute if entity @p[tag=reset_difficulty] as @a[tag=reset_difficulty] run scoreboard players reset @s difficulty
execute if entity @p[tag=reset_difficulty] as @a[tag=reset_difficulty] run scoreboard objectives remove difficulty_timer

execute if entity @p[tag=reset_difficulty] as @a[tag=reset_difficulty] run tag @s remove reset_difficulty
