scoreboard players enable @a GuideS
scoreboard players enable @a GuideC
scoreboard players enable @a GuideP
execute at @e[tag=Guide] as @e[tag=Guide] run tellraw @p[distance=..5,limit=1,scores={GuideS=0..1,GuideP=1}] {"text":"Welcome to Centural ","color":"white"}
execute at @e[tag=Guide] as @e[tag=Guide] run scoreboard players set @p[distance=6..,limit=1] GuideS 0
execute at @e[tag=Guide] as @e[tag=Guide] run scoreboard players set @p[distance=6..,limit=1] GuideC 0
execute at @e[tag=Guide] as @e[tag=Guide] run scoreboard players set @p[distance=6..,limit=1] GuideP 0
execute at @e[tag=Guide] as @e[tag=Guide] run scoreboard players add @p[distance=..5,limit=1] GuideP 1
