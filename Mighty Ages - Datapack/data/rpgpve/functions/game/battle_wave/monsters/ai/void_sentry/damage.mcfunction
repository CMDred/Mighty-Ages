#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
execute store result score #FinalDamage Dummy run attribute @e[type=enderman,tag=VoidSentry,sort=nearest,limit=1] generic.attack_damage get

scoreboard players set @s DamageType 102
damage @s 0.001 rpgpve:manual_damage by @e[type=enderman,tag=VoidSentry,sort=nearest,limit=1]
execute if score #ManualDamageHappened Dummy matches 1 run function rpgpve:stats/damage/manual_damage_check
scoreboard players reset @s DamageType
scoreboard players reset #ManualDamageHappened Dummy

playsound entity.enderman.scream hostile @a ~ ~ ~ 0.65 1.75 0
playsound block.beacon.deactivate hostile @a ~ ~ ~ 2 1.5 0
#----------------------------------------#