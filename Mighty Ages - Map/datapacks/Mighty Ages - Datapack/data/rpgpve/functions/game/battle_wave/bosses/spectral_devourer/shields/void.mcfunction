#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
team join sd_purpleshield
tag @s remove DarkShield
tag @s add VoidShield

execute store result score #rand Temp run random value 1..2

execute if score #rand Temp matches 1 run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"Spectral Devourer","color":"dark_purple"},{"text":" >>","color":"dark_gray"},{"text":" The emptiness of the ","color":"light_purple"},{"text":"Void","color":"dark_purple","bold":true,"underlined": true},{"text":" fills me with strength!","color":"light_purple"}]
#----------------------------------------#
