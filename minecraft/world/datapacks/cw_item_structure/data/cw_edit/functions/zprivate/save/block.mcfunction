function cw_serializer:read
scoreboard players operation @s commands += temp commands
execute store result storage cw_edit save.stack int 1 run scoreboard players get block bsc
data modify storage cw_edit save.blocks append from storage cw_edit save.stack
data modify storage cw_edit save.nbts append from storage cw_serializer:nbt nbt

#setblock ~ ~ ~ white_stained_glass
scoreboard players add @s commands 50