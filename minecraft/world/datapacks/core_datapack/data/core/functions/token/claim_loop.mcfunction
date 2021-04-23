
execute if entity @p[scores={walk_token=1000000..}] as @a[scores={walk_token=1000000..}] run tag @s add claim_walk_token



execute if entity @p[tag=claim_walk_token] as @a[tag=claim_walk_token] run scoreboard players remove @s walk_token 1000000
execute if entity @p[tag=claim_walk_token] as @a[tag=claim_walk_token] run give @s knowledge_book{display:{Name:'{"text":"Token","color":"#FFA1A1"}',Lore:['{"text":"Exchange these to"}','{"text":"participate in Polls"}','{"text":"or create your own!"}']},token:1b,token_version:1s} 1
execute if entity @p[tag=claim_walk_token] as @a[tag=claim_walk_token] run scoreboard players add @s token_count 1
execute if entity @p[tag=claim_walk_token] as @a[tag=claim_walk_token] run scoreboard players add %token_count token_count 1
execute if entity @p[tag=claim_walk_token] as @a[tag=claim_walk_token] run tag @s remove claim_walk_token

execute if entity @p[tag=claim_token,scores={walk_token=..999999}] as @a[tag=claim_token,scores={walk_token=..999999}] run tellraw @a {"text":"That is all for now, Thank for the exchange!","color":"yellow"}

execute if entity @p[tag=claim_token,scores={walk_token=..999999}] as @a[tag=claim_token,scores={walk_token=..999999}] run tag @s remove claim_token
