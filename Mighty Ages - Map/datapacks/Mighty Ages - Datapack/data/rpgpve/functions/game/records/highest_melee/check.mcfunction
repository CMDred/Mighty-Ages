#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#----------------RECORDS-----------------#
# Input #DistanceDeci && #DistanceUnit
execute unless score #HighestMelee GameRecords matches -2147483648..2147483647 run scoreboard players set #HighestMelee GameRecords 0
execute if score #FinalDamage Temp > #HighestMelee GameRecords run function rpgpve:game/records/highest_melee/beat
#----------------------------------------#
