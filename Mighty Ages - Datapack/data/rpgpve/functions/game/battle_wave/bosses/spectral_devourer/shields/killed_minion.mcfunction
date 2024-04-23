#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #DarkMinionsRemaining Dummy if entity @e[type=phantom,tag=SpectralDevourerMinion,tag=Dark]
execute store result score #VoidMinionsRemaining Dummy if entity @e[type=phantom,tag=SpectralDevourerMinion,tag=Void]

execute as @e[type=marker,tag=SDMinionDeathCheck] at @s unless entity @e[type=phantom,tag=SpectralDevourerMinion,distance=..2] run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/minion_death

execute as @e[type=phantom,tag=Boss,tag=DarkShield] if score #DarkMinionsRemaining Dummy matches ..0 at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/deactivate
execute as @e[type=phantom,tag=Boss,tag=VoidShield] if score #VoidMinionsRemaining Dummy matches ..0 at @s run function rpgpve:game/battle_wave/bosses/spectral_devourer/shields/deactivate
advancement revoke @s only rpgpve:bosses/kill_devourer_minion
#----------------------------------------#
