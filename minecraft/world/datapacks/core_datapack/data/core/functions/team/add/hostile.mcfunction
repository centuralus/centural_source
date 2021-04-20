team add hostile [{"text":"۞ hostile","color":"green"},"\n",{"text":"[ add ]","clickEvent":{"action":"suggest_command","value":"/function core:team/add/hostile"},"color":"green"},{"text":"[ empty ]","clickEvent":{"action":"suggest_command","value":"/function core:team/empty/hostile"},"hoverEvent":{"action":"show_text","contents":[{"text":"Empty all players from hostile team.","color":"red"}]},"color":"white"},{"text":"[ join ]","clickEvent":{"action":"suggest_command","value":"/function core:team/join/hostile"},"hoverEvent":{"action":"show_text","contents":[{"text":"Join hostile team.","color":"yellow"}]},"color":"aqua"},{"text":"[ leave ]","clickEvent":{"action":"suggest_command","value":"/function core:team/leave/hostile"},"hoverEvent":{"action":"show_text","contents":[{"text":"Leave hostile team.","color":"gold"}]},"color":"gold"},{"text":"[ list ]","clickEvent":{"action":"suggest_command","value":"/function core:team/list/hostile"},"hoverEvent":{"action":"show_text","contents":[{"text":"List players on hostile team.","color":"yellow"}]},"color":"light_purple"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/hostile"},"color":"red"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/hostile"},"color":"red"},"\n"]
team modify hostile color red
team modify hostile prefix [{"text":"☠","color":"red","hoverEvent":{"text":"Hostile Player","color":"red"}}]

#Return True if in Required Status to mark file as Required.
execute if data storage core:team {status:require}

#Test githook
