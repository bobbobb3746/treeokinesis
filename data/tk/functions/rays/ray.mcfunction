# running as player

# test
say rays function

# test if working particle effect
particle crit ~ ~ ~ 0 0 0 0 1

# collision
execute if predicate tk:holding_ntw if block ~ ~ ~ #tk:logs run function tk:rays/hit

# decrement range by 1
scoreboard players remove @s[scores={tk_range=1..}] tk_range 1

# step forward
execute if score @s tk_range matches 1.. if block ~ ~ ~ #tk:passable positioned ^ ^ ^1 run function tk:rays/ray