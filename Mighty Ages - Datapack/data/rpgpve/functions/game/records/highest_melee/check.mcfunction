#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#----------------RECORDS-----------------#
execute unless score #HighestMelee GameRecords matches 1.. run scoreboard players set #HighestMelee GameRecords 0
execute if score #FinalDamage Dummy > #HighestMelee GameRecords run function rpgpve:game/records/highest_melee/beat
#----------------------------------------#
