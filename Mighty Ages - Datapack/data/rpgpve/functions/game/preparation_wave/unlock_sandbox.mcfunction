#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
execute as @a[tag=IsInRPGPVEGame] at @s run playsound ui.button.click master @s ~ ~ ~ 5 1.75 0
tellraw @a[tag=IsInRPGPVEGame] [{"text":"You unlocked","color":"gray","italic":true},{"text":" Sandbox Mode","color":"yellow"},{"text":"!"}]
scoreboard players set @a[tag=IsInRPGPVEGame] LogMath 1
#----------------------------------------#
