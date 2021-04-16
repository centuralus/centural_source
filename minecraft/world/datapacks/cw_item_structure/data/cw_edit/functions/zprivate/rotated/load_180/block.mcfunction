execute store result score block bsc run data get storage cw_edit load.blocks[0]
execute if score block bsc matches 0 unless score masked cw_edit matches 1.. run function cw_serializer:write
execute if score block bsc matches 1.. run function cw_serializer:write
execute if data block ~ ~ ~ {} run data modify block ~ ~ ~ {} merge from storage cw_edit load.nbts[0]
execute if data block ~ ~ ~ {} run data remove storage cw_edit load.nbts[0]
data remove storage cw_edit load.blocks[0]


#setblock ~ ~ ~ white_stained_glass
scoreboard players add @s commands 50