# running as the player
# running at the location of the area effect cloud

# test
say tree algorithm

# update appropriate scoreboards
execute if entity @e[type=area_effect_cloud,tag=tkta,tag=!tktad,dx=0,dy=0,dz=0] if block ~ ~ ~ #tk:tree run scoreboard players add @s tk_count 1
execute if entity @e[type=area_effect_cloud,tag=tkta,tag=!tktad,dx=0,dy=0,dz=0] if block ~ ~ ~ #tk:logs run scoreboard players add @s tk_locount 1
execute if entity @e[type=area_effect_cloud,tag=tkta,tag=!tktad,dx=0,dy=0,dz=0] if block ~ ~ ~ #minecraft:leaves run scoreboard players add @s tk_lecount 1

## corners
# ufl corner
execute if entity @e[type=area_effect_cloud,tag=tkta,tag=!tktad,tag=ufl,dx=0,dy=0,dz=0] if block ~ ~ ~ #tk:tree positioned ~1 ~1 ~-1 run summon area_effect_cloud ~ ~ ~ {Duration:20000,Tags:["ufl","tkta"]}
# ufr corner
execute if entity @e[type=area_effect_cloud,tag=tkta,tag=!tktad,tag=ufr,dx=0,dy=0,dz=0] if block ~ ~ ~ #tk:tree positioned ~1 ~1 ~1 run summon area_effect_cloud ~ ~ ~ {Duration:20000,Tags:["ufr","tkta"]}
# ubl corner
execute if entity @e[type=area_effect_cloud,tag=tkta,tag=!tktad,tag=ubl,dx=0,dy=0,dz=0] if block ~ ~ ~ #tk:tree positioned ~-1 ~1 ~-1 run summon area_effect_cloud ~ ~ ~ {Duration:20000,Tags:["ubl","tkta"]}
# ubr corner
execute if entity @e[type=area_effect_cloud,tag=tkta,tag=!tktad,tag=ubr,dx=0,dy=0,dz=0] if block ~ ~ ~ #tk:tree positioned ~-1 ~1 ~-1 run summon area_effect_cloud ~ ~ ~ {Duration:20000,Tags:["ubr","tkta"]}
# lfl corner
execute if entity @e[type=area_effect_cloud,tag=tkta,tag=!tktad,tag=lfl,dx=0,dy=0,dz=0] if block ~ ~ ~ #tk:tree positioned ~1 ~-1 ~-1 run summon area_effect_cloud ~ ~ ~ {Duration:20000,Tags:["lfl","tkta"]}
# lfr corner
execute if entity @e[type=area_effect_cloud,tag=tkta,tag=!tktad,tag=lfr,dx=0,dy=0,dz=0] if block ~ ~ ~ #tk:tree positioned ~1 ~-1 ~1 run summon area_effect_cloud ~ ~ ~ {Duration:20000,Tags:["lfr","tkta"]}
# lbl corner
execute if entity @e[type=area_effect_cloud,tag=tkta,tag=!tktad,tag=lbl,dx=0,dy=0,dz=0] if block ~ ~ ~ #tk:tree positioned ~-1 ~-1 ~-1 run summon area_effect_cloud ~ ~ ~ {Duration:20000,Tags:["lbl","tkta"]}
# lbr corner
execute if entity @e[type=area_effect_cloud,tag=tkta,tag=!tktad,tag=lbr,dx=0,dy=0,dz=0] if block ~ ~ ~ #tk:tree positioned ~-1 ~-1 ~1 run summon area_effect_cloud ~ ~ ~ {Duration:20000,Tags:["lbr","tkta"]}


## edges
## sides

# set area effect cloud as done
execute as @e[type=area_effect_cloud,tag=tkta,tag=!tktad,dx=0,dy=0,dz=0] run tag @s add tktad