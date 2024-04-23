#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #BossAnim Dummy 0
execute as @e[type=wither,tag=IsFalling,limit=1] at @s run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/ground_pound/falling_main
execute unless score #BossAnim Dummy matches 0 run schedule function rpgpve:game/battle_wave/bosses/wither_boss/abilities/ground_pound/falling_main_sched 1t
#----------------------------------------#
