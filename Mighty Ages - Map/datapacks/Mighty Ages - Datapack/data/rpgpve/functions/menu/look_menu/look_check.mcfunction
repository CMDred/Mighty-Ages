#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#---------------CLOSE MENU-----------------#
execute positioned ~ ~-1.6 ~ if entity @e[type=armor_stand,tag=LookMenuAS,distance=..0.35] run function rpgpve:menu/look_menu/menu_check
execute positioned ~ ~-1 ~ if entity @e[type=armor_stand,tag=LookMenuAS,distance=..0.35] run function rpgpve:menu/look_menu/menu_check
execute positioned ~ ~-0.4 ~ if entity @e[type=armor_stand,tag=LookMenuAS,distance=..0.35] run function rpgpve:menu/look_menu/menu_check
execute if block ~ ~ ~ #rpgpve:semi_air if entity @s[distance=..6] positioned ^ ^ ^0.2 run function rpgpve:menu/look_menu/look_check
execute if entity @s[tag=!LookMenuFound,tag=LookMenuOpen] run function rpgpve:menu/look_menu/close
#------------------------------------------#