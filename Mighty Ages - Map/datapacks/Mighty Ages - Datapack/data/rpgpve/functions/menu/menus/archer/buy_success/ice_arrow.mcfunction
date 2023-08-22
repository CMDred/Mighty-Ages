#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
loot give @s loot rpgpve:items/arrows/ice_imbued_arrow

tellraw @s ["",{"text":"You bought some ","color":"green"},{"text":"Ice-Imbued Arrows","color":"#74c3ff"},{"text":"!","color":"green"}]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation #SharedPurse Temp -= #GoldCost Temp
execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold -= #GoldCost Temp
function rpgpve:game/sidebar/update_gold

playsound entity.player.levelup master @s ~ ~ ~ 0.8 2
playsound entity.arrow.hit master @s ~ ~ ~ 1.1 1
#------------------------------------------#