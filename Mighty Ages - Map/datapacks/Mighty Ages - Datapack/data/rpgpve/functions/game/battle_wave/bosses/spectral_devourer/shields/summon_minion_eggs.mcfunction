#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute positioned ~5 ~ ~ run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_void_minion_egg
execute positioned ~3 ~ ~3 run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_void_minion_egg
execute positioned ~-3 ~ ~3 run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_void_minion_egg
execute positioned ~-3 ~ ~ run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_void_minion_egg
execute positioned ~3 ~ ~ run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_void_minion_egg
execute positioned ~5 ~ ~-5 run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_dark_minion_egg
execute positioned ~-5 ~ ~-5 run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_dark_minion_egg
execute positioned ~ ~ ~-5 run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_dark_minion_egg
execute positioned ~ ~ ~5 run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_dark_minion_egg
execute positioned ~3 ~ ~-3 run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_dark_minion_egg

fill ~-20 ~-1 ~-20 ~20 ~-1 ~20 barrier replace air
spreadplayers ~ ~ 8 19 under 70 false @e[type=armor_stand,tag=SDMinionEgg]
fill ~-20 ~-1 ~-20 ~20 ~-1 ~20 air replace barrier
#----------------------------------------#
