# Datapack made by TheDiamondPlayables
# Support TheDiamondPlayables on patreon.com/thediamondplayables for more epic datapacks!

# Countdown Timer:
execute if score @s cs_op matches 0.. run scoreboard players remove @s cs_op 1
execute if score @s cs_op matches 0 positioned ~ ~-500 ~ unless entity @e[type=minecraft:pig,tag=ChairS,distance=..0.1] run function chairs:actions/1___1