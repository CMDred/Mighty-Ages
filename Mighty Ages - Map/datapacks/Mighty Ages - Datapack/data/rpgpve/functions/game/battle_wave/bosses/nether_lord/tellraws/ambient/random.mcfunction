#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #RNG Temp run random value 1..10

execute if score #RNG Temp matches 1 run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/ambient/1
execute if score #RNG Temp matches 2 run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/ambient/2
execute if score #RNG Temp matches 3 run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/ambient/3
execute if score #RNG Temp matches 4 run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/ambient/4
execute if score #RNG Temp matches 5 run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/ambient/5
execute if score #RNG Temp matches 6 run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/ambient/6
execute if score #RNG Temp matches 7 run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/ambient/7
execute if score #RNG Temp matches 8 run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/ambient/8
execute if score #RNG Temp matches 9 run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/ambient/9
execute if score #RNG Temp matches 10 run function rpgpve:game/battle_wave/bosses/nether_lord/tellraws/ambient/10

execute store result score @e[type=magma_cube,tag=Boss,limit=1] Date run random value 40..80
#----------------------------------------#
