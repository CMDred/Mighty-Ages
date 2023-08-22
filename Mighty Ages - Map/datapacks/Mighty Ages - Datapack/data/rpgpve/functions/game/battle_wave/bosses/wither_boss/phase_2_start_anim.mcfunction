#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
tag @s add Invincible
function rpgpve:game/battle_wave/bosses/wither_boss/tellraws/phase2/1
execute in rpgpve:rpgpve_game run tp @s -20000 -13 1 90 -80
data modify entity @s NoAI set value 1b
data modify entity @s Silent set value 1b
tag @s add Phase2
tag @s add Phase2Anim
tag @s add DoingAnimation
#----------------------------------------#
