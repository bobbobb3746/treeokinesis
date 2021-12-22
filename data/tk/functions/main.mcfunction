# reset player range score
scoreboard players set @a[scores={tk_wand=1..}] tk_range 0

## novice tree wand rays code

# set player range to ntw range
scoreboard players operation @a[scores={tk_wand=1..}] tk_range += #ntw tk_range

# execute ray cast algorithm
execute as @a[scores={tk_wand=1..}] at @s anchored eyes if predicate tk:holding_ntw run function tk:rays/ray

# reset tk_wand scoreboard(right click detection)
scoreboard players set @a[scores={tk_wand=1..}] tk_wand 0