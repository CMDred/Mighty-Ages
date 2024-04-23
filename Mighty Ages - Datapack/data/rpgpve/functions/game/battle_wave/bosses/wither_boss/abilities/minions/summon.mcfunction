#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute store result score #RNG Dummy run random value 1..2
execute if score #RNG Dummy matches 1 run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/minions/summon_wither_phantom
execute if score #RNG Dummy matches 2 run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/minions/summon_wither_skeleton
#----------------------------------------#
