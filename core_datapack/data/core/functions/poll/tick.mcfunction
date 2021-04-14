execute as @a unless entity @s[scores={poll_teleport=-2147483648..2147483647}] store result score current_time poll_teleport run time query gametime
execute as @a unless entity @s[scores={poll_teleport=-2147483648..2147483647}] if score current_time poll_teleport >= expiration_time poll_teleport run tellraw @s "Teleport Poll has expired"
execute as @a unless entity @s[scores={poll_teleport=-2147483648..2147483647}] if score current_time poll_teleport >= expiration_time poll_teleport run scoreboard players set @s poll_teleport 0

execute as @a unless entity @s[scores={poll_teleport=-2147483648..2147483647}] if score current_time poll_teleport < expiration_time poll_teleport run scoreboard players enable @s poll_teleport
execute as @a unless entity @s[scores={poll_reset=-2147483648..2147483647}] run scoreboard players enable @s poll_reset
execute as @a unless entity @s[scores={poll=-2147483648..2147483647}] run scoreboard players enable @s poll

execute if entity @p[scores={poll=1..}] as @a[scores={poll=1..}] run scoreboard players reset @s poll


execute if entity @p[scores={poll_reset=1}] as @a[scores={poll_reset=1}] run scoreboard players reset @s poll_reset


execute if entity @p[scores={poll_reset=2}] as @a[scores={poll_reset=2}] run scoreboard players reset @s poll_teleport
execute if entity @p[scores={poll_reset=2}] as @a[scores={poll_reset=2}] run scoreboard players reset @s poll_reset
