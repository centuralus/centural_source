execute as @a unless entity @s[scores={token=-2147483648..2147483647}] run scoreboard players enable @s token

execute if entity @p[scores={token=2}] as @a[scores={token=2}] run tag @s add claim_token




execute if entity @p[tag=claim_token,scores={walk_token=..999999}] as @a[tag=claim_token,scores={walk_token=..999999}] run tellraw @s {"text":"Currently you must walk 1 Million Centimeters for each Token.","color":"yellow"}
execute if entity @p[tag=claim_token,scores={walk_token=..999999}] as @a[tag=claim_token,scores={walk_token=..999999}] run tag @s remove claim_token

execute if entity @p[tag=claim_token] as @a[tag=claim_token] run function core:token/claim_loop

execute if entity @e[tag=!token_on_ground,nbt={Item: {id: "minecraft:knowledge_book", Count: 1b, tag: {token_version: 1s, display: {Lore: ['{"text":"Exchange these to"}', '{"text":"participate in Polls"}', '{"text":"or create your own!"}'], Name: '{"text":"Token","color":"#FFA1A1"}'}, token: 1b}}}] as @e[tag=!token_on_ground,nbt={Item: {id: "minecraft:knowledge_book", Count: 1b, tag: {token_version: 1s, display: {Lore: ['{"text":"Exchange these to"}', '{"text":"participate in Polls"}', '{"text":"or create your own!"}'], Name: '{"text":"Token","color":"#FFA1A1"}'}, token: 1b}}}] run data modify entity @s Age set value -32768

execute if entity @e[tag=!token_on_ground,nbt={Item: {id: "minecraft:knowledge_book", Count: 1b, tag: {token_version: 1s, display: {Lore: ['{"text":"Exchange these to"}', '{"text":"participate in Polls"}', '{"text":"or create your own!"}'], Name: '{"text":"Token","color":"#FFA1A1"}'}, token: 1b}}}] as @e[tag=!token_on_ground,nbt={Item: {id: "minecraft:knowledge_book", Count: 1b, tag: {token_version: 1s, display: {Lore: ['{"text":"Exchange these to"}', '{"text":"participate in Polls"}', '{"text":"or create your own!"}'], Name: '{"text":"Token","color":"#FFA1A1"}'}, token: 1b}}}] run tag @s add token_on_ground



execute if entity @p[scores={token=1..}] as @a[scores={token=1..}] run scoreboard players reset @s token


