title @a times 10 80 10
title @a title {"text":"Undo Saved","color":"light_purple"}
title @a subtitle {"text":"Can safely undo","color":"gray"}
kill @e[tag=saver]

bossbar set progress visible false

data modify storage cw_edit load set from storage cw_edit save
execute at @e[tag=start_point] positioned ~ ~1 ~ run function cw_edit:zprivate/load