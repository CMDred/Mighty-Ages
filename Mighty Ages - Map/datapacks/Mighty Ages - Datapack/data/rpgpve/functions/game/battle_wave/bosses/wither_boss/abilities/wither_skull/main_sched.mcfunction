#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #BossAnim Temp 0
execute as @e[type=wither,tag=DoingSkull,limit=1] at @s run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/main
execute unless score #BossAnim Temp matches 0 run schedule function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/main_sched 1t
#----------------------------------------#
