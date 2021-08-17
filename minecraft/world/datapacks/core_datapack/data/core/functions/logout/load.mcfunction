# Add Scoreboard (Removing will break he mechnic for users)
scoreboard objectives add logout_reset minecraft.custom:minecraft.leave_game "Logout Reset"

#This forces a logout_reset for all Online Players
tag @a add logout_reset
