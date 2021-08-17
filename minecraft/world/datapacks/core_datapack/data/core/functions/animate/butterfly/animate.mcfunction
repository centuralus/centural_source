#Particles Generated with: Cloud Wolf's Particle Grapher
scoreboard objectives add cw_particleplot dummy
function core:animate/butterfly/l2/l2_0
scoreboard players add $30464 cw_particleplot 1
execute if score $30464 cw_particleplot matches 125.. run scoreboard players set $30464 cw_particleplot 0