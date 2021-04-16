# Datapack made by TheDiamondPlayables
# Support TheDiamondPlayables on patreon.com/thediamondplayables for more epic datapacks!

scoreboard objectives add cs_op dummy {"text":"Operation Scoreboard","color":"aqua"}

team add cs_nocollide {"text":"No Collision Squad","color":"aqua"}
team modify cs_nocollide collisionRule never

execute unless score :var_1 cs_op = :var_1 cs_op run scoreboard players set :var_1 cs_op 3