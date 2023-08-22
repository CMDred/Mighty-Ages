#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#---------------COMPASS MENU---------------#
scoreboard players operation #Search PlayerID = @s PlayerID
execute as @e[type=chest_minecart,tag=MenuChest] if score @s PlayerID = #Search PlayerID run function rpgpve:menu/kill
tag @s remove Menu
kill @e[type=item,nbt={Item:{tag:{MenuItem:1b}}}]
execute as @p run function rpgpve:menu/reset_scores
#------------------------------------------#