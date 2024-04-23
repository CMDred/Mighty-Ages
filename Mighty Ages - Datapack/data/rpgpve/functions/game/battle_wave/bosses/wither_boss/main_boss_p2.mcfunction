#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
# Particles
execute if entity @s[tag=!DoingBeam] run particle dust{color:[0.871d,0.11d,0.871d],scale:1} ~ ~1 ~ 1.5 1.5 1.5 0.01 20 force

scoreboard players add @s[tag=!DoingAnimation] Attack1Timer 1
execute if score @s Attack1Timer >= @s Attack1Delay run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/start

scoreboard players add @s[tag=!DoingAnimation] Attack2Timer 1
execute if score @s Attack2Timer >= @s Attack2Delay run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/minions/start

scoreboard players add @s[tag=!DoingAnimation] Attack3Timer 1
execute if score @s Attack3Timer >= @s Attack3Delay run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/start

scoreboard players add @s[tag=!DoingAnimation] Attack4Timer 1
execute if score @s Attack4Timer >= @s Attack4Delay run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/ground_pound/start

scoreboard players add @s[tag=Phase2Anim] AbsMath 1
tp @s[tag=Phase2Anim] ~ ~ ~ 90 -75
execute if score @s AbsMath matches 180.. run tp @s ~ ~0.05 ~
execute if score @s AbsMath matches 180 run function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/phase2/3
execute if score @s AbsMath matches 280 run function rpgpve:game/battle_wave/bosses/wither_boss/phase_2_start
#----------------------------------------#
