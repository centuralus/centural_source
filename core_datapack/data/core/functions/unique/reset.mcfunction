
execute if entity @s[tag=reset_unique] run scoreboard players operation @s unique = unique_current unique

execute if entity @s[tag=reset_unique] run scoreboard players add unique_current unique 1

execute if entity @s[tag=reset_unique] at @s at @a[distance=1..] if score @p[distance=0,limit=1] unique = @s unique run tag @s add duplicate_unique

execute if entity @s[tag=reset_unique] if score unique_current unique > unique_max unique run scoreboard players set unique_current unique 2

#;join_team
execute if entity @s[tag=reset_unique,tag=!duplicate_unique] run tag @s remove reset_unique

execute if entity @s[tag=reset_unique,tag=duplicate_unique] run tag @s remove duplicate_unique
