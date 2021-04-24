execute as @a[team=operator,tag=operator] unless entity @s[scores={preload=-2147483648..2147483647}] run scoreboard players enable @s preloader

execute if entity @p[scores={preload=2}] as @a[scores={preload=2}] run tag @s add preloading

execute if entity @p[scores={preload=2}] as @a[scores={preload=2}] run tag @s add preload
execute if entity @p[tag=preload] as @a[tag=preload] run setblock 0 0 0 end_gateway
execute if entity @p[tag=preload] as @a[tag=preload] store result block 0 0 0 ExitPortal.x int 1 run scoreboard players get @s preload_x

execute if entity @p[tag=preload] as @a[tag=preload] store result block 0 0 0 ExitPortal.y int 1 run scoreboard players get @s preload_y

execute if entity @p[tag=preload] as @a[tag=preload] store result block 0 0 0 ExitPortal.z int 1 run scoreboard players get @s preload_z

execute if entity @p[tag=preload] as @a[tag=preload] run summon item 0 0.5 0 {"Tags":["preload"]}

execute if entity @p[tag=preload] as @a[tag=preload] unless entity @s[scores={wild_timer=-200..0}] run scoreboard objectives add wild_timer minecraft.custom:minecraft.play_time


execute if entity @e[type=item,tag=preload] as @e[type=item,tag=preload] unless entity @p[tag=preloading] run kill @s[type=item,tag=preload]
execute if entity @e[type=item,tag=preload] as @e[type=item,tag=preload] if entity @p[tag=preloading] run tellraw @p[tag=preload] {"score":{"selector":"@s","objective":"preload_timer"}}
execute if entity @p[tag=preloading] as @a[tag=preloading] unless entity @e[tag=preload,type=item] run scoreboard objective remove preload_timer
execute if entity @p[tag=preloading] as @a[tag=preloading] unless entity @e[tag=preload,type=item] run tag @s remove preloading


execute if entity @p[tag=preload] as @a[tag=preload] run tag @s remove preload


