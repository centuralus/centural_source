execute if entity @p[team=away,gamemode=!spectator] as @a[team=away,gamemode=!spectator] run gamemode spectator @s

execute if entity @p[team=away] as @a[team=away] at @s unless entity @p[distance=..32,team=!away] run tag @r[team=!away] add spectated
execute if entity @p[team=away] as @a[team=away] at @s unless entity @p[distance=..32,team=!away] run tag @s add spectating

execute if entity @p[tag=spectated] as @a[tag=spectated] at @s if entity @p[tag=spectating] unless entity @p[tag=spectating,distance=0] run tp @p[tag=spectating] ~ ~ ~
execute if entity @p[tag=spectated] as @a[tag=spectated] at @s if entity @p[tag=spectating] if entity @p[tag=spectating,distance=0] run spectate @p[tag=spectated] @p[tag=spectating]

execute if entity @p[tag=spectated] as @a[tag=spectated] run tag @s remove spectated

execute if entity @p[tag=spectating] as @a[tag=specating] run tag @s remove specating


#execute if entity @p[team=away] as @a[team=away] at @s unless entity @p[distance=..32,team=!away] run tag @r[team=!away] add spectated
#execute if entity @p[team=away] as @a[team=away] at @s unless entity @p[distance=..32,team=!away] run spectate @r
