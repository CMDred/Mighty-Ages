#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #RNG Dummy run random value 1..10

execute if score #RNG Dummy matches 1 run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/ambient/1
execute if score #RNG Dummy matches 2 run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/ambient/2
execute if score #RNG Dummy matches 3 run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/ambient/3
execute if score #RNG Dummy matches 4 run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/ambient/4
execute if score #RNG Dummy matches 5 run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/ambient/5
execute if score #RNG Dummy matches 6 run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/ambient/6
execute if score #RNG Dummy matches 7 run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/ambient/7
execute if score #RNG Dummy matches 8 run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/ambient/8
execute if score #RNG Dummy matches 9 run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/ambient/9
execute if score #RNG Dummy matches 10 run function rpgpve:game/battle_wave/bosses/spectral_devourer/tellraws/ambient/10

execute store result score @e[type=phantom,tag=Boss,limit=1] Date run random value 80..140
#----------------------------------------#
