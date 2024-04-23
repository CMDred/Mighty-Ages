#--------------MANUAL DAMAGE---------------#
execute if entity @s[type=player] run function rpgpve:stats/damage/player/manual_damage
execute if entity @s[type=!player] run function rpgpve:stats/damage/mob/manual_damage
#------------------------------------------#
