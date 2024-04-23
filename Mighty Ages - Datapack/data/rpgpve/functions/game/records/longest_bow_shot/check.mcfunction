#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#----------------RECORDS-----------------#
# Input #DistanceDeci && #DistanceUnit
execute unless score #BowShotDistUnit GameRecords matches -2147483648..2147483647 run scoreboard players set #BowShotDistUnit GameRecords 0
execute if score #DistanceUnit Dummy > #BowShotDistUnit GameRecords run function rpgpve:game/records/longest_bow_shot/beat
execute if score #DistanceUnit Dummy = #BowShotDistUnit GameRecords if score #DistanceDeci Dummy > #BowShotDistDeci GameRecords run function rpgpve:game/records/longest_bow_shot/beat
#----------------------------------------#
