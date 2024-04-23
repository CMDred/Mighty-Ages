#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
$tp @s ~$(x) ~$(y) ~$(z)
tag @s add VoidborneTitanMarker

execute unless block ~ ~ ~ #rpgpve:allowed run spreadplayers ~ ~ 1 1 false @s
#----------------------------------------#
