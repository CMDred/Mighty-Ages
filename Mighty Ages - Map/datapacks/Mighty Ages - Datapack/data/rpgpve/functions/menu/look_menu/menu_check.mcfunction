#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#---------------CLOSE MENU-----------------#
execute if score @e[type=marker,tag=LookMenuAS,sort=nearest,limit=1] M_LookMenuPage matches 1.. if entity @s[tag=!LookMenuOpen] run function rpgpve:menu/look_menu/look_found
execute if score @e[type=marker,tag=LookMenuAS,sort=nearest,limit=1] M_LookMenuPage matches 1.. run tag @s add LookMenuFound
#------------------------------------------#