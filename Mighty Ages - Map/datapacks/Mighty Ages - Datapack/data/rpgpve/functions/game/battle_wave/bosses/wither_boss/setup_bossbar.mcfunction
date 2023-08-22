#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players operation #Health Temp = @s Health
scoreboard players operation #MaxHealth Temp = @s MaxHealth

scoreboard players operation #Health Temp *= #c1000 Constant

scoreboard players operation #RealHealth Temp = #Health Temp
scoreboard players operation #RealHealth Temp /= #MaxHealth Temp

execute if score #RealHealth Temp matches ..500 if entity @s[tag=!Phase2,tag=!DoingAnimation] run function rpgpve:game/battle_wave/bosses/wither_boss/phase_2_start_anim

execute store result entity @s Health float 0.005 run scoreboard players get #RealHealth Temp
#----------------------------------------#
