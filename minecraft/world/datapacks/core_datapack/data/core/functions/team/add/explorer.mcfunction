team add explorer [{"text":"۞ Explorer","color":"green"},"\n",{"text":"[ add ]","clickEvent":{"action":"suggest_command","value":"/function core:team/add/explorer"},"color":"green"},{"text":"[ empty ]","clickEvent":{"action":"suggest_command","value":"/function core:team/empty/explorer"},"hoverEvent":{"action":"show_text","contents":[{"text":"Empty all players from explorer team.","color":"red"}]},"color":"white"},{"text":"[ join ]","clickEvent":{"action":"suggest_command","value":"/function core:team/join/explorer"},"hoverEvent":{"action":"show_text","contents":[{"text":"Join explorer team.","color":"yellow"}]},"color":"aqua"},{"text":"[ leave ]","clickEvent":{"action":"suggest_command","value":"/function core:team/leave/explorer"},"hoverEvent":{"action":"show_text","contents":[{"text":"Leave explorer team.","color":"gold"}]},"color":"gold"},{"text":"[ list ]","clickEvent":{"action":"suggest_command","value":"/function core:team/list/explorer"},"hoverEvent":{"action":"show_text","contents":[{"text":"List players on explorer team.","color":"yellow"}]},"color":"light_purple"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/explorer"},"color":"red"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/explorer"},"color":"red"},"\n"]
team modify explorer color green
team modify explorer prefix "۞"

#Return True if in Required Status to mark file as Required.
execute if data storage core:team {status:require}

#Test githook
