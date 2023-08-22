#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#---------------CLOSE MENU-----------------#
execute if entity @s[tag=Menu] run function rpgpve:menu/remove_menu
function rpgpve:menu/look_menu/summon_menu
tag @s add LookMenuOpen
#------------------------------------------#