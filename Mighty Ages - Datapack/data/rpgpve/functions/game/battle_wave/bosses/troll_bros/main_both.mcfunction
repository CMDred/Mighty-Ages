#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# scoreboard players add @s Attack1Timer 1
# execute if score @s Attack1Timer >= @s Attack1Delay run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/simple_attack/start

execute if score @s Date matches 1.. run scoreboard players remove @s Date 1
execute unless score @s Date matches 1.. run scoreboard players set @s Date 0
#----------------------------------------#
