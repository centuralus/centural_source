
execute if entity @p[team=builder] as @a[team=builder] run function core:role/builder/tick
function core:role/helper/tick
execute if entity @p[team=explorer] as @a[team=explorer] run function core:role/explorer/tick