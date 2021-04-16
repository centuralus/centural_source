# Datapack made by TheDiamondPlayables
# Support TheDiamondPlayables on patreon.com/thediamondplayables for more epic datapacks!

# Spent 2 hours alone looking for a hidden feature that Mojang accidentally implemented while fixing bugs.
# Please support me on patreon.com/thediamondplayables - spending 2 hours coding is alot more fun than 2 hours doing my actual job. 
# And I really really want to make more for you guys. I got plenty of plans for new things set up.

# Checks if conditions are valid:
scoreboard players set :var_2 cs_op 0
execute if predicate chairs:sneak if data entity @s {OnGround:1b} if block ~ ~ ~ #chairs:sittable positioned ~0.5 ~-0.895 ~0.5 store success score :var_2 cs_op run function chairs:actions/1__1
execute if score :var_2 cs_op matches 0 unless score @s cs_op = :var_1 cs_op run scoreboard players operation @s cs_op = :var_1 cs_op