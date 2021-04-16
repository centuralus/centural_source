execute if score block bsc matches 0..1420 run function cw_serializer:get_data/l1/l1_1
execute if score block bsc matches 1421..5137 run function cw_serializer:get_data/l1/l1_2
execute if score block bsc matches 5138..7330 run function cw_serializer:get_data/l1/l1_3
execute if score block bsc matches 7331..8801 run function cw_serializer:get_data/l1/l1_4
execute if score block bsc matches 8802..11336 run function cw_serializer:get_data/l1/l1_5

execute if data block ~ ~ ~ {} run data modify block ~ ~ ~ {} merge from storage cw_serializer:nbt nbt