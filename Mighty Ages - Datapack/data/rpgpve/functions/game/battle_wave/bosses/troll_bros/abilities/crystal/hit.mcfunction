#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#

scoreboard players remove @s ArrowDamage 1
execute if score @s ArrowDamage matches ..0 run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/remove_crystal

scoreboard players operation #Hits Dummy = @s ArrowDamage
data modify entity @e[type=text_display,tag=RegenCrystalHitInfo,limit=1] text set value '[{"score":{"name":"#Hits","objective":"Dummy"},"color":"light_purple","bold":true},{"text":" Hits!","color":"dark_purple","bold":true}]'
#----------------------------------------#
