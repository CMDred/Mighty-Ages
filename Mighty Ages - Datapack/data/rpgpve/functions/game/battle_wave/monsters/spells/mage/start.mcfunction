#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
scoreboard players set #Reach Dummy 150
tag @s add ThisMob
execute anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/monsters/spells/mage/raycast
tag @s remove ThisMob
#----------------------------------------#
