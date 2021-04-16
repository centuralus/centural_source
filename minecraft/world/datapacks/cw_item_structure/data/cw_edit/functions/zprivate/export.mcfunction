setblock ~ ~ ~ shulker_box{Items:[{id:"minecraft:diamond",Count:1b,tag:{display:{Name:'{"text":"Item Structure","italic":false,"color":"aqua","bold":true}',Lore:['{"text":"empty"}']}}}]}
setblock ~ ~1 ~ oak_sign{Text1:'[{"text":"Size: ","italic":false,"color":"white"},{"nbt":"save.size[0]","storage":"cw_edit","color":"dark_aqua"},{"text":",","color":"white"},{"nbt":"save.size[1]","storage":"cw_edit","color":"dark_aqua"},{"text":",","color":"white"},{"nbt":"save.size[2]","storage":"cw_edit","color":"dark_aqua"}]'}
data modify block ~ ~ ~ Items[0].tag.display.Lore[0] set from block ~ ~1 ~ Text1
data modify block ~ ~ ~ Items[0].tag.structure set from storage cw_edit save
loot replace entity @s weapon.mainhand 1 mine ~ ~ ~ stick{drop_contents:true}
setblock ~ ~1 ~ air
setblock ~ ~ ~ air

say Structure Exported