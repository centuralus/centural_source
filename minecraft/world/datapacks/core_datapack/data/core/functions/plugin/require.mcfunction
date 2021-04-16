
execute if data storage core:require {scoreboard:0b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ ERROR ] ","color":"red"},{"text":"Missing Core Functions Folder core/functions/scoreboard/","color":"white"}]
execute if data storage core:require {scoreboard:1b} if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s [{"text":" [ REQUIRE ] ","color":"dark_green"},{"text":"Found core:require scoreboard in storage.","color":"white"}]
