#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------------MENU-------------------#
execute as @a[tag=WillCheck] run function rpgpve:get_held_item_type
execute as @a[tag=WillCheck] at @s if score @s MainHand matches 1 unless entity @s[tag=Menu] at @s run function rpgpve:menu/summon_menu
execute as @a[tag=WillCheck] at @s if score @s MenuSpawnDelay matches 1.. at @s run function rpgpve:menu/menu_spawn_delay
execute as @a[tag=WillCheck] at @s unless score @s MainHand matches 1 if entity @s[tag=Menu] at @s run function rpgpve:menu/remove_menu
tag @a remove WillCheck
#------------------------------------------#