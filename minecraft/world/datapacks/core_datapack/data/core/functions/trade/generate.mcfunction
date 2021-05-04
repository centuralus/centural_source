
#If there is a player making an offer
execute if entity @p[scores={trade=2}] as @a[scores={trade=2}] run function core:trade/slot/two
execute if entity @p[scores={trade=3}] as @a[scores={trade=3}] run function core:trade/slot/three
#... TODO


