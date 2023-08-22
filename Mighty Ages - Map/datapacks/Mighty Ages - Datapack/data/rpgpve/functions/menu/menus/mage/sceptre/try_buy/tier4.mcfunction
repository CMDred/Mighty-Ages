#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------------BUY--------------------#
execute store result score #GoldCost Temp run data get entity @s Items[0].tag.Costs[3]
execute if score SharedPurse GameSettings matches 1 run scoreboard players operation @a[tag=ThisPlayer] TotalGold = #SharedPurse Temp
execute as @a[tag=ThisPlayer] at @s if score @s MagicMeleePurchased matches 4.. if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/error2
execute as @a[tag=ThisPlayer] at @s if score @s MagicMeleePurchased matches 4.. unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/error2
execute as @a[tag=ThisPlayer] at @s if score @s MagicMeleePurchased matches ..2 unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/error3
execute as @a[tag=ThisPlayer] at @s if score @s MagicMeleePurchased matches ..2 if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/error3
execute as @a[tag=ThisPlayer] at @s if score @s MagicMeleePurchased matches 3 unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/error1
execute as @a[tag=ThisPlayer] at @s if score @s MagicMeleePurchased matches 3 if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/sceptre/buy_success/tier4
#------------------------------------------#