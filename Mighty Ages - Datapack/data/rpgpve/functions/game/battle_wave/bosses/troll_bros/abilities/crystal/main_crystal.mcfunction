#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #CrystalExists Dummy 1

scoreboard players add @s Dummy 1
execute if score @s Dummy matches 600.. run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/remove_crystal

execute unless score @s AbsMath matches 0.. run scoreboard players set @s AbsMath 70
scoreboard players add @s Constant 1
execute if score @s Constant >= @s AbsMath run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/heal

particle dust{color:[0d,0.85d,0d],scale:1} ~ ~2 ~ 1.5 2 1.5 0.01 150 normal

scoreboard players set #Reach Dummy 300
execute at @e[type=marker,tag=RegenCrystalTip,distance=..9,limit=1] anchored eyes positioned ^ ^ ^ facing entity @e[type=zombie,tag=TrollBroX] eyes run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/raycast

scoreboard players set #Reach Dummy 300
execute at @e[type=marker,tag=RegenCrystalTip,distance=..9,limit=1] anchored eyes positioned ^ ^ ^ facing entity @e[type=zombie,tag=TrollBroZ] eyes run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/raycast
#----------------------------------------#
