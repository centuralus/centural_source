execute if entity @p[team=away,gamemode=!spectator] as @a[team=away,gamemode=!spectator] run gamemode spectator @s
execute if entity @p[team=away] as @a[team=away] at @s unless entity @p[distance=..32,team=!away] run spectate @r
