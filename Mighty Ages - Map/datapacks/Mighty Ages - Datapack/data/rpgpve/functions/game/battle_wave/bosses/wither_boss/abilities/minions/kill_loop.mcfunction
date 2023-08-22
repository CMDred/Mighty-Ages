#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players remove #Count Temp 1
kill @e[type=#rpgpve:has_health_bar,tag=WitherMinion,sort=random,limit=1]
execute if score #Count Temp matches 7.. run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/minions/kill_loop
#----------------------------------------#
