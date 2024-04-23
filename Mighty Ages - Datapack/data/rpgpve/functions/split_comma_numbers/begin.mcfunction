#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
scoreboard players reset #after_comma Dummy
scoreboard players reset #after_comma_2 Dummy
#--------------FIRST 3 DIGITS--------------#
scoreboard players operation #before_comma Dummy = #base_number Dummy
scoreboard players operation #before_comma Dummy %= #c1000 Constant
#---------------NEXT 3 DIGITS--------------#
execute if score #base_number Dummy matches 1000.. run scoreboard players operation #after_comma Dummy = #base_number Dummy
execute if score #base_number Dummy matches 1000.. run scoreboard players operation #after_comma Dummy /= #c1000 Constant
execute if score #base_number Dummy matches 1000.. run scoreboard players operation #after_comma Dummy %= #c1000 Constant
#---------------NEXT 3 DIGITS--------------#
execute if score #base_number Dummy matches 1000000.. run scoreboard players operation #after_comma_2 Dummy = #base_number Dummy
execute if score #base_number Dummy matches 1000000.. run scoreboard players operation #after_comma_2 Dummy /= #c1000000 Constant
execute if score #base_number Dummy matches 1000000.. run scoreboard players operation #after_comma_2 Dummy %= #c1000000 Constant
#------------------------------------------#
