#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
playsound entity.allay.hurt master @a[distance=..20] ~ ~ ~ 1 2
execute at @e[type=#rpgpve:has_health_bar,tag=ThisMob] run particle dust 0 0.431 0.051 1 ~ ~2 ~ 1 1 1 0.1 80 force
particle dust 0.071 0.714 0.145 1 ~ ~ ~ 0.5 0 0.5 0.1 60 force
scoreboard players set #Reach Temp -1
summon marker ~ ~ ~ {Tags:["GeomancerSpikePos","NewPos"]}
execute store result score @e[type=marker,tag=NewPos,limit=1] Temp run attribute @e[type=#rpgpve:has_health_bar,tag=ThisMob,sort=nearest,limit=1] generic.attack_damage get
tag @e remove NewPos
#----------------------------------------#
