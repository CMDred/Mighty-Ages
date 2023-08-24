#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
scoreboard players reset #after_comma Temp
scoreboard players reset #after_comma_2 Temp
#--------------FIRST 3 DIGITS--------------#
scoreboard players operation #before_comma Temp = #base_number Temp
scoreboard players operation #before_comma Temp %= #c1000 Constant
#---------------NEXT 3 DIGITS--------------#
execute if score #base_number Temp matches 1000.. run scoreboard players operation #after_comma Temp = #base_number Temp
execute if score #base_number Temp matches 1000.. run scoreboard players operation #after_comma Temp /= #c1000 Constant
execute if score #base_number Temp matches 1000.. run scoreboard players operation #after_comma Temp %= #c1000 Constant
#---------------NEXT 3 DIGITS--------------#
execute if score #base_number Temp matches 1000000.. run scoreboard players operation #after_comma_2 Temp = #base_number Temp
execute if score #base_number Temp matches 1000000.. run scoreboard players operation #after_comma_2 Temp /= #c1000000 Constant
execute if score #base_number Temp matches 1000000.. run scoreboard players operation #after_comma_2 Temp %= #c1000000 Constant
#------------------------------------------#
