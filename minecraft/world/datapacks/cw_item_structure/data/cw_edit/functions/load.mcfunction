data modify storage cw_edit load set from storage cw_edit save
execute unless score undo cw_edit matches 1 at @e[tag=start_point] positioned ~ ~1 ~ run function cw_edit:zprivate/load
execute if score undo cw_edit matches 1 at @e[tag=start_point] positioned ~ ~1 ~ run function cw_edit:zprivate/undo

execute store result score #sendFeedback cw_edit run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function cw_edit:zprivate/reset_gamerules 1t

function cw_edit:zprivate/menu/sound