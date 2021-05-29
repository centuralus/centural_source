execute at @s as @a[distance=0.1..] run function core:barter/view_all_loop
tag @s add reset_barter
tag @s remove view_all_barter