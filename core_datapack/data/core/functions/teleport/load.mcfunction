scoreboard objectives add teleport trigger "Request a teleport to a player."

scoreboard objectives add teleport_unique dummy "A unique ID assigned on login (Cycles throught 70 IDs)"

scoreboard players set max teleport_unique 71
scoreboard players set current teleport_unique 2
