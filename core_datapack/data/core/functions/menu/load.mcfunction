scoreboard objectives remove gui
scoreboard objectives remove menu
scoreboard objectives add menu trigger [{"text":"[ Menu ]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger menu"},"hoverEvent":{"action":"show_text","contents":[{"text":"Open Menu"}]}},{"text":"[ Spawn ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger spawn"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to Spawn"}]}},{"text":"[ Teleport Menu ]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger teleport"},"hoverEvent":{"action":"show_text","contents":[{"text":"Open up Player Teleport Menu"}]}},"\n",{"text":"[ Set Return ]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger set_return"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set a Return Teleport"}]}},{"text":"[ Return ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger return"},"hoverEvent":{"action":"show_text","contents":[{"text":"Return to your last Set Return Teleport."}]}},"\n",{"text":"[ Set Home ]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger set_home"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set a Home Teleport"}]}},"\n",{"text":"[ Home ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger home"},"hoverEvent":{"action":"show_text","contents":[{"text":"Return to your last Set Home Teleport."}]}},{"text":"[ Wild ]","color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger wild set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport randomly into the Wilderness (AKA Away from Spawn)"}]}},{"text":"[ Poll ]","color":"red","clickEvent":{"action":"run_command","value":"/trigger poll"},"hoverEvent":{"action":"show_text","contents":[{"text":"View the current polls."}]}}]
scoreboard objectives remove helper_gui
scoreboard objectives remove helper_menu
scoreboard objectives add helper_menu trigger [{"text":"[ Spawn ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger spawn"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to Spawn"}]}},{"text":"[ Builder ]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger helper_mode set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Join Builder Team."}]}},{"text":"[ Teleport Menu ]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger teleport"},"hoverEvent":{"action":"show_text","contents":[{"text":"Open up Player Teleport Menu"}]}},{"text":"[ Creative ]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger creative"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go into creative mode","color":"black"}]}},{"text":"[ Spectator ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger spectator"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go into Spectator mode","color":"black"}]}},{"text":"[ Survival ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger survival"},"hoverEvent":{"action":"show_text","contents":[{"text":"Switch Gamemode to Survival Mode"}]}},{"text":"[ Set Return ]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger set_return"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set a Return Teleport"}]}},{"text":"[ Return ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger return"},"hoverEvent":{"action":"show_text","contents":[{"text":"Return to your last Set Return Teleport."}]}},{"text":"[ Poll ]","color":"red","clickEvent":{"action":"run_command","value":"/trigger poll"},"hoverEvent":{"action":"show_text","contents":[{"text":"View the current polls."}]}},{"text":"[ Player ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger player"},"hoverEvent":{"action":"show_text","contents":[{"text":"Switch to player"}]}}]
scoreboard objectives remove builder_gui
scoreboard objectives remove builder_menu
scoreboard objectives add builder_menu trigger ["",{"text":"[ Spawn ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger spawn"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to Spawn"}]}},{"text":"[ Creative ]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger creative"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go into creative mode","color":"black"}]}},{"text":"[ Spectator ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger spectator"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go into Spectator mode","color":"black"}]}},{"text":"[ Survival ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger survival"},"hoverEvent":{"action":"show_text","contents":[{"text":"Switch Gamemode to Survival Mode"}]}},{"text":"[ Mark ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger builder_mode set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"Mark closest region as protected"}]}},{"text":"[ Save ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger builder_mode set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Save closest protected region (You should pickup the book in the center to determine save/load information)"}]}},{"text":"[ Load ]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger builder_mode set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Load closest protected region (You should pickup the book in the center to determine save/load information)"}]}},{"text":"[ X ]","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger builder_mode set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"Delete a protected region within 12 blocks of the player."}]}},{"text":"[ Teleport Menu ]","color":"blue","clickEvent":{"action":"run_command","value":"/trigger teleport"},"hoverEvent":{"action":"show_text","contents":[{"text":"Open up Player Teleport Menu"}]}},{"text":"[ Set Return ]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger set_return"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set a Return Teleport"}]}},{"text":"[ Return ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger return"},"hoverEvent":{"action":"show_text","contents":[{"text":"Return to your last Set Return Teleport."}]}},{"text":"[ Poll ]","color":"red","clickEvent":{"action":"run_command","value":"/trigger poll"},"hoverEvent":{"action":"show_text","contents":[{"text":"View the current polls."}]}},{"text":"[ Player ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger player"},"hoverEvent":{"action":"show_text","contents":[{"text":"Switch to player"}]}}]

scoreboard objectives remove explorer_menu
scoreboard objectives add explorer_menu trigger ["",{"text":"[ Spawn ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger spawn"},"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to Spawn"}]}},{"text":"[ Spectator ]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger spectator"},"hoverEvent":{"action":"show_text","contents":[{"text":"Go into Spectator mode","color":"black"}]}},{"text":"[ Survival ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger survival"},"hoverEvent":{"action":"show_text","contents":[{"text":"Switch Gamemode to Survival Mode"}]}},{"text":"[ Locate ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger locate"},"hoverEvent":{"action":"show_text","contents":[{"text":"Bring up Locate Menu."}]}},{"text":"[ Set Return ]","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger set_return"},"hoverEvent":{"action":"show_text","contents":[{"text":"Set a Return Teleport"}]}},{"text":"[ Return ]","color":"gold","clickEvent":{"action":"run_command","value":"/trigger return"},"hoverEvent":{"action":"show_text","contents":[{"text":"Return to your last Set Return Teleport."}]}},{"text":"[ Poll ]","color":"red","clickEvent":{"action":"run_command","value":"/trigger poll"},"hoverEvent":{"action":"show_text","contents":[{"text":"View the current polls."}]}},{"text":"[ Player ]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger player"},"hoverEvent":{"action":"show_text","contents":[{"text":"Switch to player"}]}}]