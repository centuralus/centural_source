
execute if entity @p[tag=rotation] as @a[tag=rotation] at @s anchored eyes facing entity @e[type=villager,sort=nearest,limit=1,distance=..8,tag=dialogue] eyes positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
execute if entity @p[tag=rotation] as @a[tag=rotation] at @s as @e[type=villager,sort=nearest,limit=1,distance=..8,tag=dialogue] at @s anchored eyes facing entity @p[tag=rotation] eyes positioned ^ ^ ^0.5 rotated as @s positioned ^ ^ ^5 facing entity @s eyes facing ^ ^ ^-1 positioned as @s run tp @s ~ ~ ~ ~ ~
