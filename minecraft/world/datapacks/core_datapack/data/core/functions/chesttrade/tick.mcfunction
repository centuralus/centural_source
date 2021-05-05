execute if entity @p[tag=chesttrade] as @p[tag=chesttrade] at @s run summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:chest",Properties:{facing:"north",type:"single"}},TileEntityData:{Lock:"§kUUID",CustomName:'[{"text":"§k"},{"text":"UUID"}]'},NoGravity:1b,Time:1,Motion:[0.0,-0.01,0.0]}
execute if entity @p[tag=chesttrade] as @p[tag=chesttrade] at @s run give @s grass{display:{Name:'{"text":"§kUUID"}'}} 1
execute if entity @p[tag=chesttrade] as @p[tag=chesttrade] run tag @s remove chesttrade
