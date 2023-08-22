#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#------------------MENUS-------------------#
execute if entity @s[scores={M_CurrentPage=1}] run function rpgpve:menu/menus/weapon_smith/main
execute if entity @s[scores={M_CurrentPage=2}] run function rpgpve:menu/menus/weapon_smith/sword/upgrade_page1
execute if entity @s[scores={M_CurrentPage=3}] run function rpgpve:menu/menus/weapon_smith/sword/upgrade_page2
execute if entity @s[scores={M_CurrentPage=4}] run function rpgpve:menu/menus/weapon_smith/sword/upgrade_page3

execute if entity @s[scores={M_CurrentPage=5}] run function rpgpve:menu/menus/weapon_smith/bow/upgrade_page1
execute if entity @s[scores={M_CurrentPage=6}] run function rpgpve:menu/menus/weapon_smith/bow/upgrade_page2

execute if entity @s[scores={M_CurrentPage=7}] run function rpgpve:menu/menus/armor_smith/main

execute if entity @s[scores={M_CurrentPage=8}] run function rpgpve:menu/menus/light_knight/main

execute if entity @s[scores={M_CurrentPage=9}] run function rpgpve:menu/menus/end_knight/main
execute if entity @s[scores={M_CurrentPage=10}] run function rpgpve:menu/menus/end_knight/blessings

execute if entity @s[scores={M_CurrentPage=11}] run function rpgpve:menu/menus/witch/main

execute if entity @s[scores={M_CurrentPage=12}] run function rpgpve:menu/menus/scientist/main

execute if entity @s[scores={M_CurrentPage=13}] run function rpgpve:menu/menus/archer/main

execute if entity @s[scores={M_CurrentPage=14}] run function rpgpve:menu/menus/mage/main
execute if entity @s[scores={M_CurrentPage=15}] run function rpgpve:menu/menus/mage/sceptre/upgrade_page1
execute if entity @s[scores={M_CurrentPage=16}] run function rpgpve:menu/menus/mage/sceptre/upgrade_page2
execute if entity @s[scores={M_CurrentPage=17}] run function rpgpve:menu/menus/mage/sceptre/upgrade_page3

execute if entity @s[scores={M_CurrentPage=18}] run function rpgpve:menu/menus/mage/wand/upgrade_page1
execute if entity @s[scores={M_CurrentPage=19}] run function rpgpve:menu/menus/mage/wand/upgrade_page2

execute if entity @s[scores={M_CurrentPage=20}] run function rpgpve:menu/menus/banker/check
execute if entity @s[scores={M_CurrentPage=21}] run function rpgpve:menu/menus/banker/give_gold
#------------------------------------------#