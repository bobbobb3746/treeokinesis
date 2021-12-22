# tree wand range scoreboard
scoreboard objectives add tk_range dummy
# novice tree wand range constant
scoreboard players set #ntw tk_range 10
# [more constants for the other tiers of tree wands]


## counters
# log and leaf count scoreboard
scoreboard objectives add tk_count dummy
# log count scoreboard
scoreboard objectives add tk_locount dummy
# leaf count scoreboard
scoreboard objectives add tk_lecount dummy


# life scoreboard for area effect clouds(how long it takes to treekinetically harvest the tree)
scoreboard objectives add tk_life dummy


# right click detection of wands(carrot on a stick)
scoreboard objectives add tk_wand minecraft.used:minecraft.carrot_on_a_stick