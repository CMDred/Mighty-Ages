#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#----------------SIDEBAR-----------------#
scoreboard players reset #RPGPVETicks Temp
execute if score #RPGPVEGameState Temp matches 2 run scoreboard players add #RPGPVESeconds Temp 1
execute if score #RPGPVESeconds Temp matches 60.. run function rpgpve:game/sidebar/time/minute
function rpgpve:game/sidebar/update_time
function rpgpve:game/sidebar/update_remaining_enemies
#----------------------------------------#
