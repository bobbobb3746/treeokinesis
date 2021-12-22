# running as player

say hit function

scoreboard players set @s tk_range 0
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:20000,Tags:["core","tkta"]}

# naming convention for tree construction algorithm
# Upper, Middle, Lower (y) Forward, Center, Back (x) Left, Center, Right (z)

# area effect clouds summoned in
# corner clouds summon 1 new corner, 3 new edges, and 3 new sides
# sides summon 1 new side
# edges summon 1 new edge and 2 new sides

# summon area effect clouds for tree algorithm
# top layer
summon minecraft:area_effect_cloud ~1 ~1 ~-1 {Duration:20000,Tags:["ufl","tkta"]}
summon minecraft:area_effect_cloud ~1 ~1 ~ {Duration:20000,Tags:["ufc","tkta"]}
summon minecraft:area_effect_cloud ~1 ~1 ~1 {Duration:20000,Tags:["ufr","tkta"]}
summon minecraft:area_effect_cloud ~ ~1 ~-1 {Duration:20000,Tags:["ucl","tkta"]}
summon minecraft:area_effect_cloud ~ ~1 ~ {Duration:20000,Tags:["ucc","tkta"]}
summon minecraft:area_effect_cloud ~ ~1 ~1 {Duration:20000,Tags:["ucr","tkta"]}
summon minecraft:area_effect_cloud ~-1 ~1 ~-1 {Duration:20000,Tags:["ubl","tkta"]}
summon minecraft:area_effect_cloud ~-1 ~1 ~ {Duration:20000,Tags:["ubc","tkta"]}
summon minecraft:area_effect_cloud ~-1 ~1 ~1 {Duration:20000,Tags:["ubr","tkta"]}

# middle layer
summon minecraft:area_effect_cloud ~1 ~ ~-1 {Duration:20000,Tags:["mfl","tkta"]}
summon minecraft:area_effect_cloud ~1 ~ ~ {Duration:20000,Tags:["mfc","tkta"]}
summon minecraft:area_effect_cloud ~1 ~ ~1 {Duration:20000,Tags:["mfr","tkta"]}
summon minecraft:area_effect_cloud ~ ~ ~-1 {Duration:20000,Tags:["mcl","tkta"]}
# core
summon minecraft:area_effect_cloud ~ ~ ~1 {Duration:20000,Tags:["mcr","tkta"]}
summon minecraft:area_effect_cloud ~-1 ~ ~-1 {Duration:20000,Tags:["mbl","tkta"]}
summon minecraft:area_effect_cloud ~-1 ~ ~ {Duration:20000,Tags:["mbc","tkta"]}
summon minecraft:area_effect_cloud ~-1 ~ ~1 {Duration:20000,Tags:["mbr","tkta"]}

# lower layer
summon minecraft:area_effect_cloud ~1 ~-1 ~-1 {Duration:20000,Tags:["lfl","tkta"]}
summon minecraft:area_effect_cloud ~1 ~-1 ~ {Duration:20000,Tags:["lfc","tkta"]}
summon minecraft:area_effect_cloud ~1 ~-1 ~1 {Duration:20000,Tags:["lfr","tkta"]}
summon minecraft:area_effect_cloud ~ ~-1 ~-1 {Duration:20000,Tags:["lcl","tkta"]}
summon minecraft:area_effect_cloud ~ ~-1 ~ {Duration:20000,Tags:["lcc","tkta"]}
summon minecraft:area_effect_cloud ~ ~-1 ~1 {Duration:20000,Tags:["lcr","tkta"]}
summon minecraft:area_effect_cloud ~-1 ~-1 ~-1 {Duration:20000,Tags:["lbl","tkta"]}
summon minecraft:area_effect_cloud ~-1 ~-1 ~ {Duration:20000,Tags:["lbc","tkta"]}
summon minecraft:area_effect_cloud ~-1 ~-1 ~1 {Duration:20000,Tags:["lbr","tkta"]}

execute at @e[type=minecraft:area_effect_cloud,tag=tkta,tag=!tktad] run function tk:tree_algorithm

# tkta - tk tree algorithm
# tktad - tk tree algorithm done

kill @e[type=minecraft:area_effect_cloud,tag=core]