#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #RNG Dummy run random value 1..3

execute if score #RNG Dummy matches 1 run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/abilities/skull/1
execute if score #RNG Dummy matches 2 run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/abilities/skull/2
execute if score #RNG Dummy matches 3 run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/abilities/skull/3

execute store result score @e[type=wither,tag=Boss,limit=1] Date run random value 100..200
#----------------------------------------#
