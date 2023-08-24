summon armor_stand ~ ~1.7 ~ {ArmorItems:[{},{},{id:"minecraft:scute",Count:1b,tag:{Tags:["NPC","detailed_npc"]}}],CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["NPC","NPCName","PlayerNPC","DontRegisterMob"],DisabledSlots:4144959}
summon text_display ~ ~2.2 ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Tags:["NPC","NPCClick","DontRegisterMob"],billboard:'center'}
summon marker ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Tags:["NPC","LookMenuAS"]}

#SET THE NPC SKIN SCORE TO CHANGE THE APPEARANCE OF YOUR NPC (STARTING AT 2 FOR ARCHER)
execute positioned ~ ~1.7 ~ run scoreboard players set @e[type=armor_stand,limit=1,sort=nearest,tag=PlayerNPC] NPC_Skin 2