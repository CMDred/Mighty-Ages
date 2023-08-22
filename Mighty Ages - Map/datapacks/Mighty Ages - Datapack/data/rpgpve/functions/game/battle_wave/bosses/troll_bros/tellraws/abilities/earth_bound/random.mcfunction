#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #RNG Temp run random value 1..3

execute if score #RNG Temp matches 1 run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/abilities/earth_bound/1
execute if score #RNG Temp matches 2 run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/abilities/earth_bound/2
execute if score #RNG Temp matches 3 run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/abilities/earth_bound/3

execute store result score @e[type=giant,tag=TrollBroZ,limit=1] Date run random value 60..120
#----------------------------------------#
