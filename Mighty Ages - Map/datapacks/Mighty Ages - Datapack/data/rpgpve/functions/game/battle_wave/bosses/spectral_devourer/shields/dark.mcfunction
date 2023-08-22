#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
team join sd_blackshield
tag @s add DarkShield
tag @s remove VoidShield

execute store result score #rand Temp run random value 1..2
execute if score #rand Temp matches 1 run tellraw @a[tag=IsInRPGPVEGame] ["",{"text":"Spectral Devourer","color":"dark_purple"},{"text":" >>","color":"dark_gray"},{"text":" The ","color":"light_purple"},{"text":"Dark","color":"black","bold":true,"underlined": true},{"text":" enlightens my power!","color":"light_purple"}]
#----------------------------------------#
