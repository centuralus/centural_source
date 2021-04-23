execute as @a unless entity @s[scores={token=-2147483648..2147483647}] run scoreboard players enable @s token

execute if entity @p[scores={token=2}] as @a[scores={token=2}] run tag @s add claim_token




execute if entity @p[tag=claim_token,scores={walk_token=..999999}] as @a[tag=claim_token,scores={walk_token=..999999}] run tellraw @s {"text":"Currently you must walk 1 Million Centimeters for each Token.","color":"yellow"}
execute if entity @p[tag=claim_token,scores={walk_token=..999999}] as @a[tag=claim_token,scores={walk_token=..999999}] run tag @s remove claim_token

execute if entity @p[tag=claim_token] as @a[tag=claim_token] run function core:token/claim_loop





execute if entity @p[scores={token=1..}] as @a[scores={token=1..}] run scoreboard players reset @s token


