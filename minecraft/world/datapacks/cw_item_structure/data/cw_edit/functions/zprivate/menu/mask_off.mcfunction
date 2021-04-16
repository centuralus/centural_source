scoreboard players set masked cw_edit 0
execute store result score #sendFeedback cw_edit run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function cw_edit:zprivate/reset_gamerules 1t
function cw_edit:zprivate/menu/config
function cw_edit:zprivate/menu/sound