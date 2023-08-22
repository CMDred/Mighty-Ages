#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------------BUY--------------------#
execute store result score #GoldCost Temp run data get entity @s Items[0].tag.Costs[1]
execute if score SharedPurse GameSettings matches 1 run scoreboard players operation @a[tag=ThisPlayer] TotalGold = #SharedPurse Temp
execute as @a[tag=ThisPlayer] at @s if score @s PhysicMeleePurchased matches 2.. if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/error2
execute as @a[tag=ThisPlayer] at @s if score @s PhysicMeleePurchased matches 2.. unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/error2
execute as @a[tag=ThisPlayer] at @s if score @s PhysicMeleePurchased matches ..0 if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/error3
execute as @a[tag=ThisPlayer] at @s if score @s PhysicMeleePurchased matches ..0 unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/error3
execute as @a[tag=ThisPlayer] at @s if score @s PhysicMeleePurchased matches 1 unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/error1
execute as @a[tag=ThisPlayer] at @s if score @s PhysicMeleePurchased matches 1 if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/weapon_smith/sword/buy_success/tier2
#------------------------------------------#