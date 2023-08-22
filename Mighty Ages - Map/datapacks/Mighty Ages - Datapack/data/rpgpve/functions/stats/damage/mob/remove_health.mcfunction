#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------REMOVE HEALTH--------------#
execute if score #FinalDamage Temp matches ..-1 run scoreboard players set #FinalDamage Temp 0
scoreboard players operation @s Health -= #FinalDamage Temp
#----------------------------------------#