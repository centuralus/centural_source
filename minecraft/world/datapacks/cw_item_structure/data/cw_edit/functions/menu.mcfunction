tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s ["",{"text":"=== "},{"text":"Item Structure","color":"aqua"},{"text":" Menu ===\n"},{"text":" (click options)","color":"gray"}]
tellraw @s [{"text":"\n - "},{"text":"CONFIG","color":"aqua","clickEvent":{"action":"run_command","value":"/function cw_edit:zprivate/menu/config"},"hoverEvent":{"action":"show_text","value":"Open config menu"}}]
tellraw @s [{"text":" - "},{"text":"Get Tools","color":"blue","clickEvent":{"action":"run_command","value":"/function cw_edit:zprivate/menu/get_tools"},"hoverEvent":{"action":"show_text","value":"Get marker placement tools"}}]

tellraw @s [{"text":"\n - "},{"text":"SAVE","color":"yellow","clickEvent":{"action":"run_command","value":"/function cw_edit:save"},"hoverEvent":{"action":"show_text","value":"Save from S to E markers"}}]
tellraw @s [{"text":" - "},{"text":"EXPORT","color":"gold","clickEvent":{"action":"run_command","value":"/function cw_edit:export"},"hoverEvent":{"action":"show_text","value":"Export saved structure to item"}}]
tellraw @s [{"text":" - "},{"text":"IMPORT","color":"dark_green","clickEvent":{"action":"run_command","value":"/function cw_edit:import"},"hoverEvent":{"action":"show_text","value":"Import item-structure in mainhand"}}]
tellraw @s [{"text":" - "},{"text":"LOAD","color":"green","clickEvent":{"action":"run_command","value":"/function cw_edit:load"},"hoverEvent":{"action":"show_text","value":"Loads from S marker"}}]
execute if score undo cw_edit matches 1 run tellraw @s [{"text":" - "},{"text":"UNDO","color":"light_purple","clickEvent":{"action":"run_command","value":"/function cw_edit:undo"},"hoverEvent":{"action":"show_text","value":"Restores target blocks"}}]
tellraw @s [{"text":" - "},{"text":"CANCEL","color":"red","clickEvent":{"action":"run_command","value":"/function cw_edit:cancel"},"hoverEvent":{"action":"show_text","value":"Cancels operation"}}]


execute store result score #sendFeedback cw_edit run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
schedule function cw_edit:zprivate/reset_gamerules 1t
function cw_edit:zprivate/menu/sound