team add player [{"text":"✌ Player","color":"aqua"},"\n",{"text":"[ add ]","clickEvent":{"action":"suggest_command","value":"/function core:team/add/player"},"color":"green"},{"text":"[ empty ]","clickEvent":{"action":"suggest_command","value":"/function core:team/empty/player"},"hoverEvent":{"action":"show_text","contents":[{"text":"Empty all players from player team.","color":"red"}]},"color":"white"},{"text":"[ join ]","clickEvent":{"action":"suggest_command","value":"/function core:team/join/player"},"hoverEvent":{"action":"show_text","contents":[{"text":"Join player team.","color":"yellow"}]},"color":"aqua"},{"text":"[ leave ]","clickEvent":{"action":"suggest_command","value":"/function core:team/leave/player"},"hoverEvent":{"action":"show_text","contents":[{"text":"Leave player team.","color":"gold"}]},"color":"gold"},{"text":"[ list ]","clickEvent":{"action":"suggest_command","value":"/function core:team/list/player"},"hoverEvent":{"action":"show_text","contents":[{"text":"List players on player team.","color":"yellow"}]},"color":"light_purple"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/player"},"color":"red"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/player"},"color":"red"},"\n"]
team modify player color aqua
team modify player prefix "✌"

#Return True if in Required Status to mark file as Required.
execute if data storage core:team {status:require}

#Test githook
