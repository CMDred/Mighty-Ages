#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
time set midnight

tp @a[tag=IsInRPGPVEGame,team=red] -15023 30 0 -90 -20
tp @a[tag=IsInRPGPVEGame,team=blue] -14970 30 0 90 -20

function rpgpve:game/battle_wave/bosses/spectral_devourer/summon


scoreboard players set @e[type=phantom,tag=SpectralDevourer] Attack1Delay 1200
scoreboard players set @e[type=phantom,tag=SpectralDevourer] Attack2Delay 600
#----------------------------------------#
