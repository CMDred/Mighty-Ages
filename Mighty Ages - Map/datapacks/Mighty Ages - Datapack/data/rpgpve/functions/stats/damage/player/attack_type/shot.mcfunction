#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------PLAYER GOT SHOT--------------#
scoreboard players set #UsedProjectile Temp 1
function rpgpve:stats/damage/player/damaged
scoreboard players set #UsedProjectile Temp 0
advancement revoke @s only rpgpve:stats/entity_hurt_player/mob_shot_player
#------------------------------------------#