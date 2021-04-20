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


#Start Create Poll
execute as @a unless entity @s[scores={poll_create=-2147483648..2147483647}] run scoreboard players enable @s poll_create

execute if entity @p[scores={poll_create=2}] as @a[scores={poll_create=2}] run tag @s add poll_create


execute if entity @p[tag=poll_create] as @a[tag=poll_create] 

execute if entity @p[tag=poll_create,nbt={Inventory:[{id:"minecraft:writable_book",tag:{poll_create:1b}}]}] as @a[tag=poll_create,nbt={Inventory:[{id:"minecraft:writable_book",tag:{poll_create:1b}}]}] run tellraw @s {"text":"You already have a Poll Create book and quil, deleing existing one and giving a new one now.","color":"yellow"}
execute if entity @p[tag=poll_create,nbt={Inventory:[{id:"minecraft:writable_book",tag:{poll_create:1b}}]}] as @a[tag=poll_create,nbt={Inventory:[{id:"minecraft:writable_book",tag:{poll_create:1b}}]}] run clear @s writable_book{poll_create:1b} 1



execute if entity @p[tag=poll_create] as @a[tag=poll_create] run give @s writable_book{display:{Name:'{"text":"Poll Create"}',Lore:['{"text":"Use this book to create a Poll."}']},poll_create:1b,title:"",author:""} 1

execute if entity @p[nbt={Inventory:[{id:"minecraft:written_book",tag:{poll_create:1b}}]}] as @a[nbt={Inventory:[{id:"minecraft:written_book",tag:{poll_create:1b}}]}] run data modify storage core:poll player_polls insert 0 from entity @s Inventory[{id:"minecraft:written_book",tag:{poll_create:1b}}]
execute if entity @p[nbt={Inventory:[{id:"minecraft:written_book",tag:{poll_create:1b}}]}] as @a[nbt={Inventory:[{id:"minecraft:written_book",tag:{poll_create:1b}}]}] run clear @s written_book{poll_create:1b} 1

execute if entity @p[tag=poll_create] as @a[tag=poll_create] run tag @s remove poll_create


execute if entity @p[scores={poll_create=1..}] as @a[scores={poll_create=1..}] run scoreboard players reset @s poll_create

#End Create Poll
