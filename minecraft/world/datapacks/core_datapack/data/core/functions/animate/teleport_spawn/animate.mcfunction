#Particles Generated with: Cloud Wolf's Particle Grapher
scoreboard objectives add cw_particleplot dummy
function core:animate/teleport_spawn/l2/l2_0
scoreboard players add $21078 cw_particleplot 1
execute if score $21078 cw_particleplot matches 125.. run scoreboard players set $21078 cw_particleplot 0