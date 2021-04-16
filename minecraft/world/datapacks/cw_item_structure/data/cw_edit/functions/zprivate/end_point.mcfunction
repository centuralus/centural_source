setblock ~ ~ ~ air

kill @e[tag=end_point]
summon area_effect_cloud ~ ~-0.9 ~ {CustomName:'{"text":"E","color":"dark_purple"}',CustomNameVisible:1b,Tags:["end_point"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#say End Point Placed