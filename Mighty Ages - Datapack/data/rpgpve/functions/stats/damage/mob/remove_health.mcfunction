#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------REMOVE HEALTH--------------#
execute if score #FinalDamage Dummy matches ..-1 run scoreboard players set #FinalDamage Dummy 0
scoreboard players operation @s Health -= #FinalDamage Dummy
#----------------------------------------#