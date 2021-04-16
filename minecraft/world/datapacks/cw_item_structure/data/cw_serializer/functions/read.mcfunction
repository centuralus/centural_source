execute if block ~ ~ ~ #cw_serializer:l1_1 run function cw_serializer:read/l1/l1_1
execute if block ~ ~ ~ #cw_serializer:l1_2 run function cw_serializer:read/l1/l1_2
execute if block ~ ~ ~ #cw_serializer:l1_3 run function cw_serializer:read/l1/l1_3
execute if block ~ ~ ~ #cw_serializer:l1_4 run function cw_serializer:read/l1/l1_4
execute if block ~ ~ ~ #cw_serializer:l1_5 run function cw_serializer:read/l1/l1_5

execute if data storage cw_serializer:nbt nbt run data remove storage cw_serializer:nbt nbt
execute if data block ~ ~ ~ {} run data modify storage cw_serializer:nbt nbt set from block ~ ~ ~