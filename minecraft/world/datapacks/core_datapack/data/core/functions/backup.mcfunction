execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s "[TASK] Saving Off, Saving All, Then Saving On."
save-off
save-all
save-on
execute if entity @p[tag=verbose] as @a[tag=verbose] run tellraw @s "[COMPLETE] Saving Off, Saving All, Then Saving On."
