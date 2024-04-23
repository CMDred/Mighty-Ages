#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #BlockExists Dummy 0
execute as @e[type=armor_stand,tag=TrollBroBlockPhysics] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/earth_bound/main_block
execute unless score #BlockExists Dummy matches 0 run schedule function rpgpve:game/battle_wave/bosses/troll_bros/abilities/earth_bound/main_block_sched 1t
#----------------------------------------#
