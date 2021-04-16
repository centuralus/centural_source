setblock ~ ~ ~ air

kill @e[tag=start_point]
summon area_effect_cloud ~ ~-0.9 ~ {CustomName:'{"text":"S","color":"dark_purple"}',CustomNameVisible:1b,Tags:["start_point"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

#say Start Point Placed