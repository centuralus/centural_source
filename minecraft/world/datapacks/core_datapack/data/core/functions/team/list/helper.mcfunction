execute at @s run clone 0 -1022 0 0 -1022 0 ~ ~ ~1
execute at @s run fill ~ ~1 ~1 ~ ~1 ~1 command_block{Command:"team list helper",auto:1b} replace air
execute at @s run summon falling_block ~ ~2 ~1 {BlockState:{Name:"minecraft:command_block"},TileEntityData:{Command:"data modify block ~ ~-2 ~ Book.tag.pages append from block ~ ~-1 ~ LastOutput",auto:1b},Time:1,Motion:[0.0,1.0,0.0]}
#execute at @s run data modify block ~ ~ ~1 Book.tag.pages set from block ~ ~1 ~1 LastOutput 
#execute at @s run fill ~ ~1 ~ ~ ~1 ~ air replace command_block
execute as @s run team list helper
