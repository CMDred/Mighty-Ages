#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players remove #Reach Dummy 1 
execute as @a[tag=IsInRPGPVEGame,gamemode=adventure,distance=..3] at @e[type=skeleton,tag=ThisMob] run function rpgpve:game/battle_wave/monsters/spells/mage/shoot
execute if score #Reach Dummy matches 1.. positioned ^ ^ ^0.2 run function rpgpve:game/battle_wave/monsters/spells/mage/raycast
#----------------------------------------#
