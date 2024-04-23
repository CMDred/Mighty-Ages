#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#----------ENVIRONMENTAL DAMAGE------------#
execute unless score @s DamageTaken matches 69420 run function rpgpve:stats/damage/player/environmental_damage/damaged
scoreboard players set @s DamageTaken 0
#------------------------------------------#
