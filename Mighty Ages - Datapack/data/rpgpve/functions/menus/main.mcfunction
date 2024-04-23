#Search NPC
execute as @a at @s if entity @e[type=minecraft:interaction,scores={Menus.Page=1..},distance=..5,limit=1] run function rpgpve:menus/npc/raycast/init

#Check for Menu Update
execute as @a store success score @s Dummy run clear @s *[minecraft:custom_data~{MenuItem:1b}] 0
execute as @a[scores={Dummy=1}] run function rpgpve:menus/clicked_menu_item/main
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{MenuItem:1b}] run function rpgpve:menus/clicked_menu_item/dropped_menu_item
