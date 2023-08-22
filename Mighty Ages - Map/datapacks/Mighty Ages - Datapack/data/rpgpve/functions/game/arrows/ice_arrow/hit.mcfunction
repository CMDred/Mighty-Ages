#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
execute store result score #rand Temp run random value 1..2
execute if score #rand Temp matches 1 run function rpgpve:game/arrows/ice_arrow/freeze
#----------------------------------------#
