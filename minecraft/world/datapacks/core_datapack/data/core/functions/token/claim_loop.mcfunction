

execute if entity @p[scores={walk_token=1000000..}] as @a[scores={walk_token=1000000..}] run scoreboard players remove @s walk_token 1000000
execute if entity @p[scores={walk_token=1000000..}] as @a[scores={walk_token=1000000..}] run give @s knowledge_book{display:{Name:'{"text":"Token","color":"#FFA1A1"}',Lore:['{"text":"Exchange these to"}','{"text":"participate in Polls"}','{"text":"or create your own!"}']},token:1b,token_version:1s} 1


execute if entity @p[tag=claim_token,scores={walk_token=..999999}] as @a[tag=claim_token,scores={walk_token=..999999}] run tag @s remove claim_token
