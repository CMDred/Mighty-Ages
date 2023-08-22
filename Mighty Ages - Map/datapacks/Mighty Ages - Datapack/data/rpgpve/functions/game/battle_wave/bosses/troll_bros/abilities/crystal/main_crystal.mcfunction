#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #CrystalExists Temp 1

scoreboard players add @s Temp 1
execute if score @s Temp matches 100.. run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/remove_crystal

execute unless score @s AbsMath matches 0.. run scoreboard players set @s AbsMath 35
scoreboard players add @s Constant 1
execute if score @s Constant >= @s AbsMath run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/heal

particle dust 0 0.85 0 1 ~ ~2 ~ 1.5 2 1.5 0.01 150 normal

scoreboard players set #Reach Temp 300
execute at @e[type=marker,tag=RegenCrystalTip,distance=..9,limit=1] anchored eyes positioned ^ ^ ^ facing entity @e[type=giant,tag=TrollBroX] eyes run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/raycast

scoreboard players set #Reach Temp 300
execute at @e[type=marker,tag=RegenCrystalTip,distance=..9,limit=1] anchored eyes positioned ^ ^ ^ facing entity @e[type=giant,tag=TrollBroZ] eyes run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/raycast
#----------------------------------------#
