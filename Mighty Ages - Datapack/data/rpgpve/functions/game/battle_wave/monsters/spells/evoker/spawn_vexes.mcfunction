#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
execute positioned ~2 ~2 ~ run function rpgpve:game/battle_wave/monsters/spells/evoker/vex
execute positioned ~-2 ~2 ~ run function rpgpve:game/battle_wave/monsters/spells/evoker/vex
execute positioned ~ ~2 ~2 run function rpgpve:game/battle_wave/monsters/spells/evoker/vex
execute positioned ~ ~2 ~-2 run function rpgpve:game/battle_wave/monsters/spells/evoker/vex
scoreboard players reset @s Attack1Timer
#----------------------------------------#
