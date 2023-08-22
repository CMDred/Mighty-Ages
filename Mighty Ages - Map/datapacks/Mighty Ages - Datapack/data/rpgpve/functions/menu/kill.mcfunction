#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------KILLING------------------#
kill @e[type=armor_stand,tag=MenuMove,sort=nearest,limit=1]
tp @s ~ ~-300 ~
kill @s
scoreboard players set @p[scores={MenuDelay=1..}] MenuDelay 0
#------------------------------------------#