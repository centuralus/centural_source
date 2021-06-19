
scoreboard objectives add watch_timer minecraft.custom:minecraft.play_time ["",{"text":"[⌚]"}]
#On login for new players + logout_reset sync gametime to watch_timer
#/time query gametime
#/time query daytime
#/time query day
scoreboard objectives add timer_travel trigger ["",{"text":"[⌚]"}]