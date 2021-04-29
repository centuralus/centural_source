team add builder [{"text":"⚒ Builder","color":"yellow"},"\n",{"text":"[ add ]","clickEvent":{"action":"suggest_command","value":"/function core:team/add/builder"},"color":"green"},{"text":"[ empty ]","clickEvent":{"action":"suggest_command","value":"/function core:team/empty/builder"},"hoverEvent":{"action":"show_text","contents":[{"text":"Empty all players from builder team.","color":"red"}]},"color":"white"},{"text":"[ join ]","clickEvent":{"action":"suggest_command","value":"/function core:team/join/builder"},"hoverEvent":{"action":"show_text","contents":[{"text":"Join builder team.","color":"yellow"}]},"color":"aqua"},{"text":"[ leave ]","clickEvent":{"action":"suggest_command","value":"/function core:team/leave/builder"},"hoverEvent":{"action":"show_text","contents":[{"text":"Leave builder team.","color":"gold"}]},"color":"gold"},{"text":"[ list ]","clickEvent":{"action":"suggest_command","value":"/function core:team/list/builder"},"hoverEvent":{"action":"show_text","contents":[{"text":"List players on builder team.","color":"yellow"}]},"color":"light_purple"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/builder"},"color":"red"},{"text":"[ remove ]","clickEvent":{"action":"suggest_command","value":"/function core:team/remove/builder"},"color":"red"},"\n"]
team modify builder color yellow
team modify builder prefix "⚒"
team join operator Nardwe
team join builder _LilPug
team join builder _Magic_Man
team join builder Tahlia_Cluffy
team join builder Heribone64
team join builder Spike40211
team join builder Obsidi4nEye
#TEMP
team join helper Odins_Mom
team join helper Drowsy1
team join helper Xios12
team join helper Sollace5792
team join helper Bonesdog
team join helper Caimengaming45
team join helper AntyCrix
team join helper WinterWins1
#TEMP
execute if entity @p[tag=verbose] as @a[tag=verbose] run team list
#Return True if in Required Status to mark file as Required.
execute if data storage core:team {status:require}

#Test githook
