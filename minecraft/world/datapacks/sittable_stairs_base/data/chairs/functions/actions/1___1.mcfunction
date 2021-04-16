# Datapack made by TheDiamondPlayables
# Support TheDiamondPlayables on patreon.com/thediamondplayables for more epic datapacks!

# Plays sound:
execute positioned ~ ~500 ~ unless entity @e[type=minecraft:pig,tag=ChairS,distance=..0.1] run playsound minecraft:entity.pig.saddle master @s ~ ~ ~ 1 1 0

# Creates the seat:
summon minecraft:pig ~ ~ ~ {NoGravity:1b,Attributes:[{Base:1.0d,Name:"minecraft:generic.max_health"},{Base:0.0d,Name:"minecraft:generic.movement_speed"}],Invulnerable:1b,Saddle:1b,PersistenceRequired:1b,Tags:["ChairS","Unfiltered","Empty"],Age:200,Health:1.0f,Silent:1b,NoAI:1b,DeathLootTable:"thediamondplayables:chairs",ActiveEffects:[{Ambient:0b,ShowIcon:0b,ShowParticles:0b,Duration:500,Id:14b,Amplifier:0b}],Team:"cs_nocollide"}