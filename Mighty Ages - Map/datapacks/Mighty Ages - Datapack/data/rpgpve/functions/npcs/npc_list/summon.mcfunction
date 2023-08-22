summon armor_stand ~ ~1.7 ~ {ArmorItems:[{},{},{id:"minecraft:scute",Count:1b,tag:{Tags:["NPC","detailed_npc"]}}],CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["NPC","NPCName","PlayerNPC","DontRegisterMob"],DisabledSlots:4144959}
summon armor_stand ~ ~1.95 ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["NPC","NPCClick","DontRegisterMob"],DisabledSlots:4144959}
summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["NPC","LookMenuAS"],DisabledSlots:4144959}

#SET THE NPC SKIN SCORE TO CHANGE THE APPEARANCE OF YOUR NPC (STARTING AT 2 FOR ARCHER)
execute positioned ~ ~1.7 ~ run scoreboard players set @e[type=armor_stand,limit=1,sort=nearest,tag=PlayerNPC] NPC_Skin 2
