#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
playsound minecraft:entity.turtle.egg_break master @a ~ ~ ~ 0.4 0 0
playsound minecraft:entity.phantom.ambient master @a ~ ~ ~ 1.2 0.4 0
execute if entity @s[tag=DarkEgg] run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_dark_minion
execute if entity @s[tag=VoidEgg] run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/summon_void_minion
kill @s
#----------------------------------------#
