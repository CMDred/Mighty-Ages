#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------GOLD-------------------#
xp set @s 0 points
execute store result score #CurrentLevel Dummy run xp query @s levels
scoreboard players operation #WantedLevel Dummy = @s TotalGold

execute if score #CurrentLevel Dummy = #WantedLevel Dummy run return 0

execute store result score #Difference Dummy run scoreboard players operation #WantedLevel Dummy -= #CurrentLevel Dummy

execute if score #Difference Dummy matches 1.. unless score #Difference Dummy matches 500.. run xp add @s 1 levels
execute if score #Difference Dummy matches 1.. if score #Difference Dummy matches 500.. store result storage rpgpve:gold Gold int 1 run scoreboard players get @s TotalGold
execute if score #Difference Dummy matches 1.. if score #Difference Dummy matches 500.. run function rpgpve:game/battle_wave/gold/set with storage rpgpve:gold {}

execute if score #Difference Dummy matches ..-1 unless score #Difference Dummy matches ..-500 run xp add @s -1 levels
execute if score #Difference Dummy matches ..-1 if score #Difference Dummy matches ..-500 store result storage rpgpve:gold Gold int 1 run scoreboard players get @s TotalGold
execute if score #Difference Dummy matches ..-1 if score #Difference Dummy matches ..-500 run function rpgpve:game/battle_wave/gold/set with storage rpgpve:gold {}
#----------------------------------------#
