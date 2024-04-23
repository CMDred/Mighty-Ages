summon armor_stand ~ ~1.7 ~ {ArmorItems:[{},{},{id:"minecraft:turtle_scute",Count:1b,components:{"minecraft:custom_data":{Tags:["NPC","detailed_npc"]}}}],CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["NPC","NPCName","PlayerNPC","DontRegister"],DisabledSlots:4144959}
summon text_display ~ ~2.2 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Tags:["NPC","NPCClick","DontRegister"],billboard:'center'}
summon interaction ~ ~ ~ {width:0.601f,height:1.951f,response:1b,Tags:["NPC.New","NPC"]}

#SET THE NPC SKIN SCORE TO CHANGE THE APPEARANCE OF YOUR NPC (STARTING AT 2 FOR ARCHER)
execute positioned ~ ~1.7 ~ run scoreboard players set @e[type=armor_stand,limit=1,sort=nearest,tag=PlayerNPC] NPC_Skin 2