team add helper [{"text":"✍ Helper","color":"light_purple"},"\n",{"text":"[ add ]","clickEvent":{"action":"suggest_command","value":"/function core:team/add/helper"},"color":"green"},{"text":"[ empty ]","clickEvent":{"action":"suggest_command","value":"/function core:team/empty/helper"},"hoverEvent":{"action":"show_text","contents":[{"text":"Empty all players from helper team.","color":"red"}]},"color":"white"},{"text":"[ join ]","clickEvent":{"action":"suggest_command","value":"/function core:team/join/helper"},"hoverEvent":{"action":"show_text","contents":[{"text":"Join helper team.","color":"yellow"}]},"color":"aqua"},{"text":"[ leave ]","clickEvent":{"action":"suggest_command","value":"/function core:team/leave/helper"},"hoverEvent":{"action":"show_text","contents":[{"text":"Leave helper team.","color":"gold"}]},"color":"gold"},{"text":"[ list ]","clickEvent":{"action":"suggest_command","value":"/function core:team/list/helper"},"hoverEvent":{"action":"show_text","contents":[{"text":"List players on helper team.","color":"yellow"}]},"color":"light_purple"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/helper"},"color":"red"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/helper"},"color":"red"},"\n"]
team modify helper color light_purple
team modify helper prefix "✍"

team join helper Odins_Mom
team join helper Drowsy1
team join helper Xios12
team join helper Sollace5792
team join helper Bonesdog
team join helper Caimengaming45
team join helper AntyCrix
team join helper WinterWins1

execute if entity @p[tag=verbose] as @a[tag=verbose] run team list
#Return True if in Required Status to mark file as Required.
execute if data storage core:team {status:require}

#Test githook
