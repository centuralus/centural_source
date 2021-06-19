execute if entity @p as @a unless entity @s[scores={phase=-2147483648..2147483647}] run scoreboard players enable @s phase

execute if entity @p[scores={phase=1..}] as @a[scores={phase=1..}] run tag @s add reset_phase

execute if entity @p[scores={phase=2}] as @a[scores={phase=2}] run tellraw @s {"text":"This feature has been disabled!"}
execute if entity @p[scores={phase=1}] as @a[scores={phase=1}] run tellraw @s {"text":"This feature has been disabled!"}


execute if entity @p[tag=phase] as @a[tag=phase] unless entity @s[scores={phase_timer=-2147483648..2147483647}] run scoreboard objectives add phase_timer minecraft.custom:minecraft.play_time
execute if entity @p[tag=phase,scores={phase_timer=..1}] as @a[tag=phase,scores={phase_timer=..1}] run gamerule spectatorsGenerateChunks false
execute if entity @p[tag=phase,scores={phase_timer=..1}] as @a[tag=phase,scores={phase_timer=..1}] run gamemode spectator @s
execute if entity @p[tag=phase,scores={phase_timer=..1}] as @a[tag=phase,scores={phase_timer=..1}] at @s run particle minecraft:poof ~ ~ ~ 0 1 0 0 20 force @a[distance=..32]
execute if entity @p[tag=phase,scores={phase_timer=..1}] as @a[tag=phase,scores={phase_timer=..1}] run scoreboard players set @s phase_timer 2
execute if entity @p[tag=phase] as @a[tag=!phase,scores={phase_timer=-1..1}] run scoreboard players set @s phase_timer -214748364
execute if entity @p[tag=phase,scores={phase_timer=10..}] as @a[tag=phase,scores={phase_timer=10..}] run gamemode survival @s
execute if entity @p[tag=phase,scores={phase_timer=10..}] as @a[tag=phase,scores={phase_timer=10..}] run tag @s remove phase


execute if entity @p[tag=phase,scores={phase_timer=2..50}] as @a[tag=phase,scores={phase_timer=2..50}] at @s run particle minecraft:poof ~ ~ ~ 0 0 0 0 10 force @a[distance=..32]
#execute if entity @p[tag=phase,scores={phase_timer=10}] as @a[tag=phase,scores={phase_timer=10}] run title @s actionbar "40 tick remaining"
#execute if entity @p[tag=phase,scores={phase_timer=20}] as @a[tag=phase,scores={phase_timer=20}] run title @s actionbar "30 tick remaining"
#execute if entity @p[tag=phase,scores={phase_timer=30}] as @a[tag=phase,scores={phase_timer=30}] run title @s actionbar "20 tick remaining"
#execute if entity @p[tag=phase,scores={phase_timer=40}] as @a[tag=phase,scores={phase_timer=40}] run title @s actionbar "10 tick remaining"

execute unless entity @p[tag=phase] if entity @p[scores={phase_timer=-2147483648..2147483647}] run gamerule spectatorsGenerateChunks true
execute unless entity @p[tag=phase] if entity @p[scores={phase_timer=-2147483648..2147483647}] run scoreboard objectives remove phase_timer

execute if entity @p[tag=reset_phase] as @a[tag=reset_phase] run scoreboard players reset @s phase
execute if entity @p[tag=reset_phase] as @a[tag=reset_phase] run tag @s remove reset_phase
