execute as @a unless entity @s[scores={alpha_tester=-2147483648..2147483647}] run scoreboard players enable @s alpha_tester

execute if entity @p[scores={alpha_tester=1..}] as @a[scores={alpha_tester=1..}] run tag @s add reset_alpha_tester
execute if entity @p[scores={alpha_tester=2}] as @a[scores={alpha_tester=2}] run tag @s add join_alpha_tester
execute if entity @p[scores={alpha_tester=3}] as @a[scores={alpha_tester=3}] run tag @s add leave_alpha_tester

execute if entity @p[tag=join_alpha_tester] as @a[tag=join_alpha_tester] if entity @s[tag=alpha_tester] run tellraw @s {"text":"You are already tagged as an Alpha Tester.","color":"yellow"}
execute if entity @p[tag=join_alpha_tester] as @a[tag=join_alpha_tester] if entity @s[tag=!alpha_tester] run tellraw @s {"text":"Alpha Tester features such as trading now enabled. WARNING! use features at your own risk. To attempt a trade look for the players unique id on the TAB screen then type /trigger trade set # (Hold the item you wish to trade in your left hand)","color":"yellow"}
execute if entity @p[tag=join_alpha_tester] as @a[tag=join_alpha_tester] if entity @s[tag=!alpha_tester] run tag @s add alpha_tester
execute if entity @p[tag=join_alpha_tester] as @a[tag=join_alpha_tester] run tag @s remove join_alpha_tester


execute if entity @p[tag=leave_alpha_tester] as @a[tag=leave_alpha_tester] if entity @s[tag=!alpha_tester] run tellraw @s {"text":"You are not tagged as an Alpha Tester.","color":"yellow"}
execute if entity @p[tag=leave_alpha_tester] as @a[tag=leave_alpha_tester] if entity @s[tag=alpha_tester] run tellraw @s {"text":"disabling Alpha Tester Features.","color":"yellow"}
execute if entity @p[tag=leave_alpha_tester] as @a[tag=leave_alpha_tester] if entity @s[tag=alpha_tester] run tag @s remove alpha_tester
execute if entity @p[tag=leave_alpha_tester] as @a[tag=leave_alpha_tester] run tag @s remove leave_alpha_tester

execute if entity @p[tag=reset_alpha_tester] as @a[tag=reset_alpha_tester] run scoreboard players reset @s alpha_tester

execute if entity @p[tag=reset_alpha_tester] as @a[tag=reset_alpha_tester] run tag @s remove reset_alpha_tester