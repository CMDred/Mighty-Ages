#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------------NPCS-------------------#
function rpgpve:npcs/npc_list/summon
execute positioned ~ ~1.7 ~ run scoreboard players set @e[type=armor_stand,limit=1,sort=nearest,tag=PlayerNPC] NPC_Skin 8
execute positioned ~ ~1.7 ~ run data modify entity @e[type=armor_stand,limit=1,sort=nearest,tag=PlayerNPC] CustomName set value '{"text":"Scientist","color":"red"}'
execute positioned ~ ~1.7 ~ run data modify entity @e[type=text_display,tag=NPCClick,limit=1,sort=nearest] text set value '{"text":"Click to buy Offensive Items!","color":"gray","underlined":true}'
#------------------------------------------#
