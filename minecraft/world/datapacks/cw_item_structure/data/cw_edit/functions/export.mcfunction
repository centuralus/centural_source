data remove block 69420 0 69420 Items
data modify block 69420 0 69420 Items set value [{id:"minecraft:diamond",Count:1b,tag:{display:{Name:'{"text":"Item Structure","italic":false,"color":"aqua","bold":true}',Lore:['{"text":"empty"}']}}}]
data merge block 69420 2 69420 {Text1:'[{"text":"Size: ","italic":false,"color":"white"},{"nbt":"save.size[0]","storage":"cw_edit","color":"dark_aqua"},{"text":",","color":"white"},{"nbt":"save.size[1]","storage":"cw_edit","color":"dark_aqua"},{"text":",","color":"white"},{"nbt":"save.size[2]","storage":"cw_edit","color":"dark_aqua"}]'}
data modify block 69420 0 69420 Items[0].tag.display.Lore[0] set from block 69420 2 69420 Text1
data modify block 69420 0 69420 Items[0].tag.structure set from storage cw_edit save
loot give @s mine 69420 0 69420 stick{drop_contents:true}

title @s times 10 80 10
title @s title {"text":"Item Exported","color":"gold"}
title @s subtitle {"text":"Save to toolbars for transfer","color":"gray"}

execute store result score #sendFeedback cw_edit run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function cw_edit:zprivate/reset_gamerules 1t

function cw_edit:zprivate/menu/sound