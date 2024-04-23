#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
tag @s add Attacker
playsound entity.allay.hurt master @a[distance=..20] ~ ~ ~ 1 2
scoreboard players set #Reach Dummy 70
execute store result score #Damage Dummy run attribute @s generic.attack_damage get
execute anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/monsters/spells/evoker/raycast
tag @s remove Attacker
#----------------------------------------#
