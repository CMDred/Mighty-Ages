#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tp @e[type=zombie,tag=Resurfacing] @s

scoreboard players operation #FinalDamage Dummy = @e[type=zombie,tag=TrollBroZ,distance=..100,limit=1] BonusMagicDamage

scoreboard players set @s DamageType 101
damage @s 0.001 rpgpve:manual_damage by @e[type=zombie,tag=TrollBroZ,distance=..100,limit=1]
execute if score #ManualDamageHappened Dummy matches 1 run function rpgpve:stats/damage/manual_damage_check
scoreboard players reset @s DamageType
scoreboard players reset #ManualDamageHappened Dummy
#----------------------------------------#
