#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
clone ~-3 40 ~-3 ~3 48 ~3 ~-3 ~ ~-3
fill ~-3 40 ~-3 ~3 48 ~3 air

particle explosion_emitter ~ ~ ~ 1 2 1 0.1 10 normal
playsound entity.generic.explode master @a ~ ~ ~ 0.85 1 0
tag @e remove CrystalSpawned
kill @s[type=interaction]
kill @e[type=text_display,tag=RegenCrystalHitInfo]
kill @e[type=marker,tag=RegenCrystalTip]
#----------------------------------------#
