#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @s remove Invincible
data modify entity @s NoAI set value 0b
data modify entity @s Silent set value 0b
tag @s remove DoingAnimation
tag @s remove Phase2Anim
scoreboard players reset @s AbsMath

execute in the_end run tp @s 0 50 0 0 0

execute in the_end run spreadplayers 0 0 2 10 false @a[tag=IsInRPGPVEGame]

schedule function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/phase2/4 2t
#----------------------------------------#
