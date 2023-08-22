#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute as @e[type=interaction,tag=RegenCrystalInteraction,limit=1] at @s run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/hit
playsound entity.player.attack.crit master @s ~ ~ ~ 1 0.75 0
advancement revoke @s only rpgpve:bosses/hit_crystal
#----------------------------------------#
