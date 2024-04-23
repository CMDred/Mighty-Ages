#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------------NPCS-------------------#
function rpgpve:npcs/npc_list/summon
execute positioned ~ ~1.7 ~ run scoreboard players set @e[type=armor_stand,limit=1,sort=nearest,tag=PlayerNPC] NPC_Skin 4
execute positioned ~ ~1.7 ~ run data modify entity @e[type=armor_stand,limit=1,sort=nearest,tag=PlayerNPC] CustomName set value '{"text":"Crimson Paladin","color":"red"}'
execute positioned ~ ~1.7 ~ run data modify entity @e[type=text_display,tag=NPCClick,limit=1,sort=nearest] text set value '{"text":"Click to view Kills Leaderboard!","color":"gray","underlined":true}'
data modify entity @e[type=#rpgpve:npc_entities,tag=PlayerNPC,sort=nearest,limit=1] ArmorItems[2].components."minecraft:custom_data".Tags append value "KillsLeaderboard"

tag @e[tag=NPC.New,sort=nearest,limit=1] add NPC.CrimsonKnight
tag @e[tag=NPC.New,sort=nearest,limit=1] remove NPC.New
#------------------------------------------#
