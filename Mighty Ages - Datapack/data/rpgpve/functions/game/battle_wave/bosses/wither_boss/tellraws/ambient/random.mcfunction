#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #RNG Dummy run random value 1..6

execute if score #RNG Dummy matches 1 run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/ambient/1
execute if score #RNG Dummy matches 2 run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/ambient/2
execute if score #RNG Dummy matches 3 run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/ambient/3
execute if score #RNG Dummy matches 4 run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/ambient/4
execute if score #RNG Dummy matches 5 run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/ambient/5
execute if score #RNG Dummy matches 6 run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/ambient/6

execute store result score @e[type=wither,tag=Boss,limit=1] Date run random value 100..200
#----------------------------------------#
