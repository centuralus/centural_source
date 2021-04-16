kill @e[tag=loader]
summon area_effect_cloud ~ ~ ~ {Tags:["loader","org_x"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon area_effect_cloud ~ ~ ~ {Tags:["loader","org_y"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
summon area_effect_cloud ~ ~ ~ {Tags:["loader","org_z"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}

function cw_edit:zprivate/progress_estimate

execute as @e[tag=loader,tag=org_x,limit=1,type=area_effect_cloud] at @s run function cw_edit:zprivate/rotated/load_180/start