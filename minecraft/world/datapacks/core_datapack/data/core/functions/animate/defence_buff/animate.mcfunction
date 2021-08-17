#Particles Generated with: Cloud Wolf's Particle Grapher
scoreboard objectives add cw_particleplot dummy
function core:animate/defence_buff/l2/l2_0
scoreboard players add $32151 cw_particleplot 1
execute if score $32151 cw_particleplot matches 125.. run scoreboard players set $32151 cw_particleplot 0