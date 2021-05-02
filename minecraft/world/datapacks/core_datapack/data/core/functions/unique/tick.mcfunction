execute as @a unless entity @s[scores={unique=2..71}] run tag @s add reset_unique

execute if entity @p[tag=reset_unique] as @a[tag=reset_unique] run scoreboard players operation @s unique = unique_current unique

execute if entity @p[tag=reset_unique] as @a[tag=reset_unique] run scoreboard players add unique_current unique 1

execute if entity @p[tag=reset_unique] as @a[tag=reset_unique] at @s if entity @p[distance=1..]

execute if entity @p[tag=reset_unique] as @a[tag=reset_unique] at @a[distance=1..] if score @p[distance=0,limit=1] unique = @s unique run tag @s add duplicate_unique

execute if entity @p[tag=reset_unique] as @a[tag=reset_unique] if score unique_current unique > unique_max unique run scoreboard players set unique_current unique 2

execute if entity @p[tag=reset_unique,tag=!duplicate_unique] as @a[tag=reset_unique,tag=!duplicate_unique] run tag @s remove reset_unique

execute if entity @p[tag=duplicate_unique] as @a[tag=duplicate_unique] run tag @s remove duplicate_unique

