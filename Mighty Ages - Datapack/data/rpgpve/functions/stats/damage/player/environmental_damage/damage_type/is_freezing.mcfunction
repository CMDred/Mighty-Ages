#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#----------ENVIRONMENTAL DAMAGE------------#
scoreboard players operation #FinalDamage Dummy = @s MaxHealth
scoreboard players operation #FinalDamage Dummy /= #c10 Constant
execute if score #FinalDamage Dummy matches 0 run scoreboard players set #FinalDamage Dummy 1
scoreboard players set @s IconColor 6
#------------------------------------------#
