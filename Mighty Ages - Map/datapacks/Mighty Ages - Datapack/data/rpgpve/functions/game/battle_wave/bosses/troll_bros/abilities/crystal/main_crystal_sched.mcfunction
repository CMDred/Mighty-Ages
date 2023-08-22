#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #CrystalExists Temp 0
execute as @e[type=interaction,tag=RegenCrystalInteraction] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/main_crystal
execute unless score #CrystalExists Temp matches 0 run schedule function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/main_crystal_sched 1t
#----------------------------------------#
