#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------GOLD-------------------#
execute if score SharedPurse GameSettings matches 1.. run scoreboard players operation #SharedPurse Dummy -= #Cost Dummy
execute if score SharedPurse GameSettings matches 0 run scoreboard players operation @s TotalGold -= #Cost Dummy
function rpgpve:game/sidebar/update_gold
#----------------------------------------#
