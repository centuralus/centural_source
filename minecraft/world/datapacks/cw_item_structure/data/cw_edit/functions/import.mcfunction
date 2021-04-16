execute if data entity @s SelectedItem.tag.structure run data modify storage cw_edit save set from entity @s SelectedItem.tag.structure

title @s times 10 80 10
title @s title {"text":"Item Imported","color":"dark_green"}
title @s subtitle {"text":"Imported from hand Item","color":"gray"}
execute unless data entity @s SelectedItem.tag.structure run title @s title {"text":"FAILED Imported","color":"dark_green"}
execute unless data entity @s SelectedItem.tag.structure run title @s subtitle {"text":"This isnt an item structure!","color":"gray"}

execute store result score #sendFeedback cw_edit run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function cw_edit:zprivate/reset_gamerules 1t

function cw_edit:zprivate/menu/sound