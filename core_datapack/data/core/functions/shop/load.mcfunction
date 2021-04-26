scoreboard objectives add shop_token dummy "Shop Token"
scoreboard objectives add shop trigger ["",{"text":"[ Browse ]","clickEvent":{"action":"run_command","value":"/trigger shop set 2"}},{"text":" [ Sell ] ","clickEvent":{"action":"run_command","value":"/trigger shop set 3"}}]

tag @e[tag=spawn] add shop