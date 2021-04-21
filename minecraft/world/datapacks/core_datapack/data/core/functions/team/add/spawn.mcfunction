team add spawn [{"text":"✌ spawn","color":"aqua"},"\n",{"text":"[ add ]","clickEvent":{"action":"suggest_command","value":"/function core:team/add/spawn"},"color":"green"},{"text":"[ empty ]","clickEvent":{"action":"suggest_command","value":"/function core:team/empty/spawn"},"hoverEvent":{"action":"show_text","contents":[{"text":"Empty all spawns from spawn team.","color":"red"}]},"color":"white"},{"text":"[ join ]","clickEvent":{"action":"suggest_command","value":"/function core:team/join/spawn"},"hoverEvent":{"action":"show_text","contents":[{"text":"Join spawn team.","color":"yellow"}]},"color":"aqua"},{"text":"[ leave ]","clickEvent":{"action":"suggest_command","value":"/function core:team/leave/spawn"},"hoverEvent":{"action":"show_text","contents":[{"text":"Leave spawn team.","color":"gold"}]},"color":"gold"},{"text":"[ list ]","clickEvent":{"action":"suggest_command","value":"/function core:team/list/spawn"},"hoverEvent":{"action":"show_text","contents":[{"text":"List spawns on spawn team.","color":"yellow"}]},"color":"light_purple"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/spawn"},"color":"red"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/spawn"},"color":"red"},"\n"]
team modify spawn color aqua
team modify spawn prefix "✌"

#Return True if in Required Status to mark file as Required.
execute if data storage core:team {status:require}

#Test githook
