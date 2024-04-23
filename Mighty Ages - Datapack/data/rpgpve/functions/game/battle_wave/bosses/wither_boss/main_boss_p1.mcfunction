#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Particles
particle dust{color:[0.353d,0.353d,0.353d],scale:1} ~ ~ ~ 1.5 1.5 1.5 0.01 20 force

scoreboard players add @s Attack1Timer 1
execute if score @s Attack1Timer >= @s Attack1Delay run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/start

scoreboard players add @s[tag=!DoingAnimation] Attack2Timer 1
execute if score @s Attack2Timer >= @s Attack2Delay run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/minions/start

scoreboard players add @s[tag=!DoingAnimation] Attack4Timer 1
execute if score @s Attack4Timer >= @s Attack4Delay run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/ground_pound/start
#----------------------------------------#
