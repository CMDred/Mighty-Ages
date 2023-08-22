#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
execute unless entity @a[tag=IsInRPGPVEGame,distance=..5] run function rpgpve:game/battle_wave/monsters/spells/void_creeper/invisible 
execute if entity @a[tag=IsInRPGPVEGame,distance=..5] run function rpgpve:game/battle_wave/monsters/spells/void_creeper/no_invis 
#----------------------------------------#
