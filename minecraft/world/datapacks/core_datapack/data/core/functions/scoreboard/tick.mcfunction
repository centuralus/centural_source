#execute if data storage core:scoreboard/require {tick:1b}
#execute if data storage core:scoreboard {status:tick}
execute if data storage core:scoreboard {status:require} if data storage core:scoreboard/require {tick:0b} run help
