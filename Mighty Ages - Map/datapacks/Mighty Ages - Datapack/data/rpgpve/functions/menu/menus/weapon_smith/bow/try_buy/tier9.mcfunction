#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------------BUY--------------------#
execute store result score #GoldCost Temp run data get entity @s Items[0].tag.Costs[0]
execute if score SharedPurse GameSettings matches 1 run scoreboard players operation @a[tag=ThisPlayer] TotalGold = #SharedPurse Temp
execute as @a[tag=ThisPlayer] at @s if score @s PhysicRangedPurchased matches 9.. if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/error2
execute as @a[tag=ThisPlayer] at @s if score @s PhysicRangedPurchased matches 9.. unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/error2
execute as @a[tag=ThisPlayer] at @s if score @s PhysicRangedPurchased matches ..7 unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/error3
execute as @a[tag=ThisPlayer] at @s if score @s PhysicRangedPurchased matches ..7 if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/error3
execute as @a[tag=ThisPlayer] at @s if score @s PhysicRangedPurchased matches 8 unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/error1
execute as @a[tag=ThisPlayer] at @s if score @s PhysicRangedPurchased matches 8 if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/bow/buy_success/tier9
#------------------------------------------#