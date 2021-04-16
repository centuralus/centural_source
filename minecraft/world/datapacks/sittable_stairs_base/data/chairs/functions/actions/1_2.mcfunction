# Datapack made by TheDiamondPlayables
# Support TheDiamondPlayables on patreon.com/thediamondplayables for more epic datapacks!

# Filters Chair:
execute positioned ~ ~500 ~ if entity @e[type=minecraft:pig,tag=ChairS,distance=..0.1] store success score :var_2 cs_op run function chairs:actions/2_
execute positioned ~ ~500 ~ unless entity @e[type=minecraft:pig,tag=ChairS,distance=..0.1] run function chairs:actions/1__2