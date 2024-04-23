#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------GOLD-------------------#
execute if score SharedPurse GameSettings matches 1.. run scoreboard players operation #Gold Dummy = #SharedPurse Dummy
execute unless score SharedPurse GameSettings matches 1.. run scoreboard players operation #Gold Dummy = @s TotalGold
#----------------------------------------#
