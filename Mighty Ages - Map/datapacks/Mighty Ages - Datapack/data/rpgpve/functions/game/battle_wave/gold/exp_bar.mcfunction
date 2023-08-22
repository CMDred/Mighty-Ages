#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------GOLD-------------------#
xp set @s 0 points
execute store result score #CurrentLevel Temp run xp query @s levels
scoreboard players operation #WantedLevel Temp = @s TotalGold

execute if score #CurrentLevel Temp = #WantedLevel Temp run return 0

execute store result score #Difference Temp run scoreboard players operation #WantedLevel Temp -= #CurrentLevel Temp

execute if score #Difference Temp matches 1.. unless score #Difference Temp matches 500.. run xp add @s 1 levels
execute if score #Difference Temp matches 1.. if score #Difference Temp matches 500.. store result storage rpgpve:gold Gold int 1 run scoreboard players get @s TotalGold
execute if score #Difference Temp matches 1.. if score #Difference Temp matches 500.. run function rpgpve:game/battle_wave/gold/set with storage rpgpve:gold {}

execute if score #Difference Temp matches ..-1 unless score #Difference Temp matches ..-500 run xp add @s -1 levels
execute if score #Difference Temp matches ..-1 if score #Difference Temp matches ..-500 store result storage rpgpve:gold Gold int 1 run scoreboard players get @s TotalGold
execute if score #Difference Temp matches ..-1 if score #Difference Temp matches ..-500 run function rpgpve:game/battle_wave/gold/set with storage rpgpve:gold {}
#----------------------------------------#
