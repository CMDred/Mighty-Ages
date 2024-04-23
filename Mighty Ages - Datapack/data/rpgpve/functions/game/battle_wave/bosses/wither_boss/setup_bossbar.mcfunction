#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players operation #Health Dummy = @s Health
scoreboard players operation #MaxHealth Dummy = @s MaxHealth

scoreboard players operation #Health Dummy *= #c1000 Constant

scoreboard players operation #RealHealth Dummy = #Health Dummy
scoreboard players operation #RealHealth Dummy /= #MaxHealth Dummy

execute if score #RealHealth Dummy matches ..500 if entity @s[tag=!Phase2,tag=!DoingAnimation] run function rpgpve:game/battle_wave/bosses/wither_boss/phase_2_start_anim

execute store result entity @s Health float 0.005 run scoreboard players get #RealHealth Dummy
#----------------------------------------#
