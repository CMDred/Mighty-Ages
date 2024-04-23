#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
tag @s add Attacker
playsound entity.enderman.hurt master @a ~ ~ ~ 0.5 2 0
scoreboard players set #Reach Dummy 70
execute store result score #Damage Dummy run attribute @s generic.attack_damage get

execute anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/monsters/spells/endermancer/raycast
#----------------------------------------#
