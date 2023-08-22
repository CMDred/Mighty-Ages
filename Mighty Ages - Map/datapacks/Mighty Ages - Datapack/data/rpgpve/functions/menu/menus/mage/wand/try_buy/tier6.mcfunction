#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------------BUY--------------------#
execute store result score #GoldCost Temp run data get entity @s Items[0].tag.Costs[1]
execute if score SharedPurse GameSettings matches 1 run scoreboard players operation @a[tag=ThisPlayer] TotalGold = #SharedPurse Temp
execute as @a[tag=ThisPlayer] at @s if score @s MagicRangedPurchased matches 6.. if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/error2
execute as @a[tag=ThisPlayer] at @s if score @s MagicRangedPurchased matches 6.. unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/error2
execute as @a[tag=ThisPlayer] at @s if score @s MagicRangedPurchased matches ..4 unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/error3
execute as @a[tag=ThisPlayer] at @s if score @s MagicRangedPurchased matches ..4 if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/error3
execute as @a[tag=ThisPlayer] at @s if score @s MagicRangedPurchased matches 5 unless score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/error1
execute as @a[tag=ThisPlayer] at @s if score @s MagicRangedPurchased matches 5 if score @s TotalGold >= #GoldCost Temp run function rpgpve:menu/menus/mage/wand/buy_success/tier6
#------------------------------------------#