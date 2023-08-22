#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#---------------COMPASS MENU---------------#
execute as @e[type=#rpgpve:minecarts,tag=!invisible_minecart] run function rpgpve:menu/invisible_minecarts
#----------------LOOK MENU-----------------#
tag @a remove LookMenuFound
execute as @a at @s positioned ~ ~1.62 ~ if entity @e[type=armor_stand,tag=LookMenuAS,distance=..6] run function rpgpve:menu/look_menu/look_check
execute as @a[tag=LookMenuOpen] at @s unless entity @e[type=armor_stand,tag=LookMenuAS,distance=..6] run function rpgpve:menu/look_menu/close
#------------------MENUS-------------------#
execute as @a[tag=Menu,scores={M_ClickElement=1..}] at @s as @e[type=chest_minecart,tag=MenuChest] if score @s PlayerID = @p PlayerID at @s run function rpgpve:menu/chest_main
scoreboard players reset @a M_ClickElement
execute as @a store result score @s M_ClickElement run clear @s #rpgpve:all{MenuItem:1b}
execute as @a[tag=Menu] at @s run function rpgpve:menu/active_player
execute as @e[type=armor_stand,tag=MenuMove] at @s unless entity @e[type=chest_minecart,tag=MenuChest,distance=..8] run function rpgpve:menu/manual_break
kill @e[type=item,nbt={Item:{tag:{MenuItem:1b}}}]
#------------------------------------------#