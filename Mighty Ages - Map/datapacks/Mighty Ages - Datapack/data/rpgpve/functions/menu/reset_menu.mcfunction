#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#------------------EVENT-------------------#
scoreboard players set @s M_CurrentPage -1
scoreboard players set @s M_PageDelay 1
function rpgpve:menu/menus/main
scoreboard players remove @s[scores={M_PageDelay=1..}] M_PageDelay 1
function rpgpve:menu/menus/main
#------------------------------------------#