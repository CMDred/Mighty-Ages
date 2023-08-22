#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#------------------EVENT-------------------#
execute at @s as @e[type=chest_minecart,tag=MenuChest,tag=!LookMenu] if score @s PlayerID = @p PlayerID run function rpgpve:menu/reset_menu
execute at @s as @e[type=chest_minecart,tag=MenuChest,tag=LookMenu] if score @s PlayerID = @p PlayerID unless score @s M_CurrentPage matches 40 run function rpgpve:menu/reset_look_menu
advancement revoke @s only rpgpve:menu/open_menu
#------------------------------------------#