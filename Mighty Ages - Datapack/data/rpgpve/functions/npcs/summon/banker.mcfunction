#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------------NPCS-------------------#
function rpgpve:npcs/npc_list/summon
execute positioned ~ ~1.7 ~ run scoreboard players set @e[type=armor_stand,limit=1,sort=nearest,tag=PlayerNPC] NPC_Skin 10
execute positioned ~ ~1.7 ~ run data modify entity @e[type=armor_stand,limit=1,sort=nearest,tag=PlayerNPC] CustomName set value '{"text":"Banker","color":"gold"}'
execute positioned ~ ~1.7 ~ run data modify entity @e[type=text_display,tag=NPCClick,limit=1,sort=nearest] text set value '{"text":"Click to see your Shared Purse!","color":"gray","underlined":true}'
#------------------------------------------#
