scoreboard objectives add talk_to_villager minecraft.custom:minecraft.talked_to_villager "Right Click to Talk to a Villager"

scoreboard objectives remove grow_seeds
scoreboard objectives add grow_seeds trigger ["[ Grow Seeds ]",{"text":"[ Melon ]","clickEvent":{"action":"run_command","value":"/trigger grow_seeds set 2"},"color":"light_purple"}]
# Set Melon Price
scoreboard players set melon grow_seeds 1

scoreboard objectives add yes trigger "Response yes to dialogue"
scoreboard objectives add no trigger "Response no to dialogue"
