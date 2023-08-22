#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#------------------MENUS-------------------#
scoreboard players operation #Search Temp = @s PlayerID
execute as @a if score @s PlayerID = #Search Temp run tag @s add ThisPlayer
function rpgpve:menu/open_menus
execute if entity @s[scores={M_NewPage=-1..}] run function rpgpve:menu/change_page
execute if entity @s[scores={M_PageDelay=1..}] run function rpgpve:menu/open_menus
scoreboard players remove @s[scores={M_PageDelay=1..}] M_PageDelay 1
tag @a remove ThisPlayer
#------------------------------------------#