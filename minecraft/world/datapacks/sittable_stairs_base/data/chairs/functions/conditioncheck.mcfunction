# Datapack made by TheDiamondPlayables
# Support TheDiamondPlayables on patreon.com/thediamondplayables for more epic datapacks!

# Interpretations:
# var_1: Delay
# var_2: Boolean

# 1. To spawn a chair:
execute unless score :var_1 cs_op matches 1.. run scoreboard players set :var_1 cs_op 1
execute as @a at @s align xz run function chairs:actions/1_1
execute as @e[tag=ChairS,tag=Unfiltered] at @s run function chairs:actions/1_2

# 2. Chair conditions:
tag @e[tag=ChairS,tag=!Empty] add Empty
execute as @a[nbt={RootVehicle:{Entity:{Tags:["ChairS"]}}}] at @s as @e[sort=nearest,limit=1,tag=ChairS,type=minecraft:pig] run function chairs:actions/2
execute as @e[tag=ChairS,tag=Empty] run data modify entity @s Saddle set value 1b

execute as @e[tag=ChairS,nbt={Age:0}] run function chairs:actions/2_