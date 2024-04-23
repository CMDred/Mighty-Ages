#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
kill @e[type=zombie,tag=ControlsX,limit=1]
execute as @a[tag=IsInRPGPVEGame] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/tellraws/death/x_died/1
advancement revoke @s only rpgpve:bosses/kill_bro_x
#----------------------------------------#
