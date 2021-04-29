scoreboard objectives add shop_token dummy "Shop Token"
scoreboard objectives add shop trigger ["",{"text":"[ Browse ]","clickEvent":{"action":"run_command","value":"/trigger shop set 2"}},{"text":" [ Sell ] ","clickEvent":{"action":"run_command","value":"/trigger shop set 3"}}]

tag @e[tag=spawn] add shop
execute if entity @e[tag=shop,type=armor_stand] as @e[tag=shop,type=armor_stand] at @s unless block ~ ~ ~1 lectern run setblock ~ ~ ~1 lectern[has_book=true]{Book:{id:"minecraft:writable_book",Count:1b,tag:{save:1b,pages:[""]}}} replace
