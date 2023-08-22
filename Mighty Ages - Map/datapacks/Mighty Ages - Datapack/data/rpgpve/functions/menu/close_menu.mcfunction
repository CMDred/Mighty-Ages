#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#---------------CLOSE MENU-----------------#
execute at @a[distance=..5] if score @s PlayerID = @p PlayerID run function rpgpve:menu/look_menu/regenerate_menu
function rpgpve:menu/click_event
#------------------------------------------#