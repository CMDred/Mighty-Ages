#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#---------------ITEM THROWN----------------#
execute on origin run scoreboard players operation #Search PlayerID = @s PlayerID
execute as @e[type=chest_minecart,tag=MenuChest] at @s run function rpgpve:menu/chest_main
kill @s
#------------------------------------------#