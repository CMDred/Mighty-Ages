#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------PLAYER GOT CRIT--------------#
scoreboard players set #WasCrit Temp 1
function rpgpve:stats/damage/player/damaged
scoreboard players reset #WasCrit Temp
advancement revoke @s only rpgpve:stats/entity_hurt_player/player_crit_player
#------------------------------------------#
