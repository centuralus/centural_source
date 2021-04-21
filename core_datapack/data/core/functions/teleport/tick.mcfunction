execute as @a unless entity @s[scores={teleport=-2147483648..2147483647}] run scoreboard players enable @s teleport

execute if entity @p[scores={teleport=2..2147483647}] as @a[scores={teleport=2..2147483647}] run tag @s add teleport

execute if entity @p[scores={teleport=1}] as @a[scores={teleport=1}] run tag @s add teleport_menu

#
execute as @a unless entity @s[scores={teleport_unique=-100..100}] run scoreboard players set @s teleport_unique 0
execute if entity @p[scores={teleport_unique=0}] as @p[scores={teleport_unique=0}] run scoreboard players add current teleport_unique 1
execute if entity @p[scores={teleport_unique=0}] as @p[scores={teleport_unique=0}] if score current teleport_unique matches 0 run scoreboard players set current teleport_unique 2
execute if entity @p[scores={teleport_unique=0}] as @p[scores={teleport_unique=0}] if score current teleport_unique > max teleport_unique run scoreboard players set current teleport_unique 2
execute if entity @p[scores={teleport_unique=0}] as @p[scores={teleport_unique=0}] if score current teleport_unique <= max teleport_unique run scoreboard players operation @s teleport_unique = current teleport_unique

#;tellraw_teleport

#;tellraw_teleport_request
execute if entity @p[tag=teleport,tag=!teleport_receiver] as @a[tag=!teleport,tag=!teleport_receiver] if score @s[tag=!teleport_receiver] teleport_unique = @p[tag=teleport,tag=!teleport_receiver] teleport run tellraw @s ["Would like to teleport to you. Click their name above to accept. (Warning if you click this after the cooldown you will trigger a request to the other player instead)"]
execute if entity @p[tag=teleport,tag=!teleport_receiver] as @a[tag=!teleport,tag=!teleport_receiver] if score @s[tag=!teleport_receiver] teleport_unique = @p[tag=teleport,tag=!teleport_receiver] teleport run tag @s add teleport_receiver

execute if entity @p[tag=teleport] as @a[tag=teleport] unless entity @s[scores={teleport_timer=0..}] run scoreboard objectives add teleport_timer minecraft.custom:minecraft.play_time

execute if entity @p[tag=teleport_receiver] as @a if score @p[tag=teleport_receiver] teleport = @s[tag=teleport] teleport_unique at @p[tag=teleport_receiver] run tp @s ~ ~ ~

execute if entity @p[tag=teleport_receiver] as @a if score @p[tag=teleport_receiver] teleport = @s[tag=teleport] teleport_unique at @p[tag=teleport_receiver] run scoreboard players set @a[distance=..1] teleport_timer 500

execute if entity @p[tag=teleport,scores={teleport_timer=1}] as @a[tag=teleport,scores={teleport_timer=1}] run title @s actionbar [{"text":"█","color":"green"}]

execute if entity @p[tag=teleport,scores={teleport_timer=25}] as @a[tag=teleport,scores={teleport_timer=25}] run title @s actionbar [{"text":"▇","color":"green"}]

execute if entity @p[tag=teleport,scores={teleport_timer=50}] as @a[tag=teleport,scores={teleport_timer=50}] run title @s actionbar [{"text":"▆","color":"green"}]
#
execute if entity @p[tag=teleport,scores={teleport_timer=75}] as @a[tag=teleport,scores={teleport_timer=75}] run title @s actionbar [{"text":"▅","color":"green"}]

execute if entity @p[tag=teleport,scores={teleport_timer=100}] as @a[tag=teleport,scores={teleport_timer=100}] run title @s actionbar [{"text":"▄","color":"yellow"}]

execute if entity @p[tag=teleport,scores={teleport_timer=125}] as @a[tag=teleport,scores={teleport_timer=125}] run title @s actionbar [{"text":"▃","color":"yellow"}]

execute if entity @p[tag=teleport,scores={teleport_timer=150}] as @a[tag=teleport,scores={teleport_timer=150}] run title @s actionbar [{"text":"▂","color":"yellow"}]

execute if entity @p[tag=teleport,scores={teleport_timer=175}] as @a[tag=teleport,scores={teleport_timer=175}] run title @s actionbar [{"text":"▁","color":"red"}]

execute if entity @p[tag=teleport,scores={teleport_timer=200}] as @a[tag=teleport,scores={teleport_timer=200}] run title @s actionbar [{"text":"Teleport Request Canceled","color":"yellow"}]



execute if entity @p[tag=teleport_receiver,scores={teleport_timer=1}] as @a[tag=teleport_receiver,scores={teleport_timer=1}] run title @s actionbar [{"text":"█","color":"green"}]


execute if entity @p[tag=teleport_receiver,scores={teleport_timer=25}] as @a[tag=teleport_receiver,scores={teleport_timer=25}] run title @s actionbar [{"text":"▇","color":"green"}]


execute if entity @p[tag=teleport_receiver,scores={teleport_timer=50}] as @a[tag=teleport_receiver,scores={teleport_timer=50}] run title @s actionbar [{"text":"▆","color":"green"}]

execute if entity @p[tag=teleport_receiver,scores={teleport_timer=75}] as @a[tag=teleport_receiver,scores={teleport_timer=75}] run title @s actionbar [{"text":"▅","color":"green"}]

execute if entity @p[tag=teleport_receiver,scores={teleport_timer=100}] as @a[tag=teleport_receiver,scores={teleport_timer=100}] run title @s actionbar [{"text":"▄","color":"yellow"}]

execute if entity @p[tag=teleport_receiver,scores={teleport_timer=125}] as @a[tag=teleport_receiver,scores={teleport_timer=125}] run title @s actionbar [{"text":"▃","color":"yellow"}]


execute if entity @p[tag=teleport_receiver,scores={teleport_timer=150}] as @a[tag=teleport_receiver,scores={teleport_timer=150}] run title @s actionbar [{"text":"▂","color":"yellow"}]

execute if entity @p[tag=teleport_receiver,scores={teleport_timer=175}] as @a[tag=teleport_receiver,scores={teleport_timer=175}] run title @s actionbar [{"text":"▁","color":"red"}]

execute if entity @p[tag=teleport_receiver,scores={teleport_timer=200}] as @a[tag=teleport_receiver,scores={teleport_timer=200}] run title @s actionbar [{"text":"Incoming Request Canceled","color":"yellow"}]


execute if entity @p[scores={teleport_timer=200..}] as @a[scores={teleport_timer=200..}] run tag @s remove teleport_receiver
execute if entity @p[scores={teleport_timer=200..}] as @a[scores={teleport_timer=200..}] run tag @s remove teleport
execute if entity @p[scores={teleport_timer=200..}] as @a[scores={teleport_timer=200..}] run scoreboard players reset @s teleport
execute if entity @p[scores={teleport_timer=200..}] as @a[scores={teleport_timer=200..}] unless entity @p[tag=teleport] run scoreboard objectives remove teleport_timer
execute if entity @p[scores={teleport_timer=200..}] as @a[scores={teleport_timer=200..}] run scoreboard players reset @s teleport_timer

execute as @p[sort=random] at @s at @a[distance=1..] if score @p[distance=0] teleport_unique = @s teleport_unique run tag @s add reset_teleport_unique
execute if entity @p[tag=reset_teleport_unique] as @a[tag=reset_teleport_unique] run tellraw @s "You have the same ID as someone else, changing ID."
execute if entity @p[tag=reset_teleport_unique] as @a[tag=reset_teleport_unique] run scoreboard players reset @s teleport_unique
execute if entity @p[tag=reset_teleport_unique] as @a[tag=reset_teleport_unique] run tag @s remove reset_teleport_unique

execute if entity @p[tag=teleport_menu] as @a[tag=teleport_menu] run tag @s remove teleport_menu

execute if entity @p[scores={teleport=1}] as @a[scores={teleport=1}] run scoreboard players reset @s teleport