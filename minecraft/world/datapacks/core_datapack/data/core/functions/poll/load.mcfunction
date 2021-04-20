#scoreboard objectives remove poll_teleport


#Results Remain Free and RePoll in 1 Month
#scoreboard objectives add poll_teleport trigger ["",{"text":"How should the `/trigger teleport` be implemented?","color":"green"},"\n",{"text":"- Teleports should cost no resources and should work accross all deminsions","clickEvent":{"action":"run_command","value":"/trigger poll_teleport set 2"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to cast your vote for this option."}]},"color":"yellow"},"\n",{"text":"- Teleports should be free in the Overworld and cost 1 ender pearl to and from the End or Nether as well as first time entry Achievments unlocked.","clickEvent":{"action":"run_command","value":"/trigger poll_teleport set 3"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to cast your vote for this option."}]},"color":"yellow"},"\n",{"text":"- Teleports should be free in the Overworld and teleportion within the End/Nether should not be possible.","clickEvent":{"action":"run_command","value":"/trigger poll_teleport set 4"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to cast your vote for this option."}]},"color":"yellow"},"\n",{"text":"- Teleports should cost 1 ender pearl in the Overworld and teleportion within the End/Nether should not be possible.","clickEvent":{"action":"run_command","value":"/trigger poll_teleport set 5"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click here to cast your vote for this option."}]},"color":"yellow"}]
execute store result score current_time poll_teleport run time query gametime
scoreboard players set expiration_time poll_teleport 42846000

scoreboard objectives remove poll
#scoreboard objectives add poll trigger ["",{"text":"[ Teleport ]","color":"green","clickEvent":{"action":"run_command","value":"/trigger poll_teleport set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"How should /trigger teleport work? Click here for more information","color":"yellow"}]}},{"text":"[ Reset Poll ]","color":"red","clickEvent":{"action":"run_command","value":"/trigger poll_reset set 1"},"hoverEvent":{"text":"Click here view poll reset options."},"color":"yellow"}]
scoreboard objectives add poll trigger ["",{"text":"[ No Active Polls ]","color":"yellow","hoverEvent":{"action":"show_text","contents":[{"text":"There are currently no active polls.","color":"yellow"}]}},{"text":"[ Reset Poll ]","color":"red","clickEvent":{"action":"run_command","value":"/trigger poll_reset set 1"},"hoverEvent":{"text":"Click here view poll reset options."},"color":"yellow"}]


scoreboard objectives remove poll_reset
scoreboard objectives add poll_reset trigger ["",{"text":"Click Below to reset casted vote for specfic poll"},"\n",{"text":"- Teleport Poll","clickEvent":{"action":"run_command","value":"/trigger poll_reset set 2"},"hoverEvent":{"text":"Click here to reset your /trigger poll_teleport"},"color":"yellow"}]

scoreboard objectives remove poll_create
scoreboard objectives add poll_create trigger ["",{"text":"[ Create ]","clickEvent":{"action":"run_command","value":"/trigger poll_create set 2"},"color":"red"},{"text":"[ List ]","clickEvent":{"action":"run_command","value":"/trigger poll_create set 3"},"color":"yellow"}]
