scoreboard players remove #RaycastReach Dummy 1
execute as @e[type=minecraft:interaction,scores={Menus.Page=1..},dx=0] positioned ~-0.99 ~-0.99 ~-0.99 if entity @s[dx=0] run return run function rpgpve:menus/npc/found_npc
execute if score #RaycastReach Dummy matches 0 if score @s Menus.LookingAtID matches -2147483648.. run function rpgpve:menus/npc/no_npc_found
execute unless score #RaycastReach Dummy matches 0 positioned ^ ^ ^0.2 run function rpgpve:menus/npc/raycast/raycast