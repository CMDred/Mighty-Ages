#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#----------------SIDEBAR-----------------#
scoreboard players reset #RPGPVETicks Dummy
execute if score #RPGPVEGameState Dummy matches 2 run scoreboard players add #RPGPVESeconds Dummy 1
execute if score #RPGPVESeconds Dummy matches 60.. run function rpgpve:game/sidebar/time/minute
function rpgpve:game/sidebar/update_time
function rpgpve:game/sidebar/update_remaining_enemies
#----------------------------------------#
