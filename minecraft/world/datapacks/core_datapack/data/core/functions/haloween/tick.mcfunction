
execute if entity @p as @a unless entity @s[scores={haloween=-2147483648..2147483647}] run scoreboard players enable @s haloween

execute if entity @p[scores={haloween=1..}] as @a[scores={haloween=1..}] run tag @s add reset_haloween
execute if entity @p[scores={haloween=..-1}] as @a[scores={haloween=..-1}] run tag @s add reset_haloween

execute if entity @p[scores={haloween=2}] as @a[scores={haloween=2}] run tag @s add nbs_haloween

execute if entity @p[scores={haloween=-1}] as @a[scores={haloween=-1}] run tag @s remove nbs_haloween


execute if entity @p[tag=reset_haloween] as @a[tag=reset_haloween] run scoreboard players reset @s haloween

execute if entity @p[tag=reset_haloween] as @a[tag=reset_haloween] run tag @s remove reset_haloween
