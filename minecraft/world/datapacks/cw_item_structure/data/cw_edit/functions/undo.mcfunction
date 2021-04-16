data modify storage cw_edit load set from storage cw_edit undo
execute at @e[tag=start_point] positioned ~ ~1 ~ run function cw_edit:zprivate/load

execute store result score #sendFeedback cw_edit run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function cw_edit:zprivate/reset_gamerules 1t

function cw_edit:zprivate/menu/sound