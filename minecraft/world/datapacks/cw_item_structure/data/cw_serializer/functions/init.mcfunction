tellraw @a[gamemode=creative,tag=!cw_serializer_msg] {"text":"Block Serializer Installed","color":"green"}
tellraw @a[gamemode=creative,tag=!cw_serializer_msg] {"text":"-> by Cloud_Wolf, see YT for more packs!","color":"dark_green"}
tellraw @a[gamemode=creative,tag=!cw_serializer_msg] {"text":"- V2.0 CHANGELOG:","color":"dark_red"}
tellraw @a[gamemode=creative,tag=!cw_serializer_msg] {"text":"- Handles NBT blocks on storage element: cw_serializer:nbt nbt","color":"red"}
tellraw @a[gamemode=creative,tag=!cw_serializer_msg] {"text":"- function: get_data gives fallingsand formated nbt on storage element: cw_serializer:nbt block","color":"red"}
tellraw @a[gamemode=creative,tag=!cw_serializer_msg] ["",{"text":"[ "},{"text":"Click to Disable Message","color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add cw_serializer_msg"}},{"text":" ]"}]

scoreboard objectives add bsc dummy
scoreboard players add block bsc 0