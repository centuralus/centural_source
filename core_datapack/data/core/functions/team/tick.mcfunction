#First time player determined by walk stat
execute if entity @p[team=] as @a[team=] unless entity @s[scores={walk_one_cm=0..}] run tellraw @a [{"text":"✌","color":"light_purple"},{"selector":"@s"}," has joined the server for the first time.","\n",{"text":"Everyone from Centural welcomes and thanks you for joining!","color":"yellow"}]

execute if entity @p[team=] as @a[team=] unless entity @s[scores={walk_one_cm=0..}] run tellraw @s ["This is a test/development server","\n","For more help click or type ",{"text":"/trigger menu","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger menu"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to open your player menu.","color":"yellow"}]}}]

execute if entity @p[team=] as @a[team=] unless entity @s[scores={walk_one_cm=0..}] run tellraw @s ["If you are missing a Structure please visit pre.centural.us and get with an Admin to help transfer you Structure! (This proccess will be easier later this year with an Item Transfer for Structures thanks to Cloud Wolf)"]

execute if entity @p[team=] as @a[team=] unless entity @s[scores={walk_one_cm=0..}] run tellraw @s ["To join our ",{"text":"Discord Server Click Here","clickEvent":{"action":"open_url","value":"https://discord.com/invite/YV4fEuE9fm"},"hoverEvent":{"action":"show_text","contents":[{"text":"Invite Code ~ YV4fEuE9fm"}]},"color":"red"}]


execute if entity @p[team=] as @p[team=] unless entity @s[scores={walk_one_cm=0..}] run tp @s @e[tag=spawn,limit=1]

execute if entity @p[team=] as @p[team=] run team join player