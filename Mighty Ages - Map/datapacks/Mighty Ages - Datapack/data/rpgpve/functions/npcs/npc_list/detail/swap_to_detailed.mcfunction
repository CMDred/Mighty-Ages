summon villager ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["NPC","detailed_npc","DontRegisterMob"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b},{id:"minecraft:invisibility",amplifier:5b,duration:2147483647,show_particles:0b}],Offers:{}}
summon skeleton ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["NPC","detailed_npc","DontRegisterMob"],active_effects:[{id:"minecraft:fire_resistance",amplifier:0b,duration:2147483647,show_particles:0b},{Id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b},{id:"minecraft:invisibility",amplifier:5b,duration:2147483647,show_particles:0b}]}

team join nocol @e[type=#rpgpve:npc_entities,tag=NPC] 
execute as @e[type=#rpgpve:npc_entities,tag=detailed_npc,sort=nearest,limit=2] run data modify entity @s Rotation set from entity @e[type=#rpgpve:npc_entities,tag=PlayerNPC,sort=nearest,limit=1] Rotation

item replace entity @s armor.head with air

#SET TAG
execute positioned ~ ~-1.7 ~ run data modify entity @e[type=villager,sort=nearest,limit=1,tag=detailed_npc] Tags set from entity @s ArmorItems[2].tag.Tags

scoreboard players operation #NPCSkin Temp = @s NPC_Skin
scoreboard players operation #NPCSkin Temp *= #c5 Constant

scoreboard players operation #BodyTexture Temp = #NPCSkin Temp
scoreboard players operation #RArmTexture Temp = #NPCSkin Temp
scoreboard players operation #LArmTexture Temp = #NPCSkin Temp
scoreboard players operation #HeadTexture Temp = #NPCSkin Temp

scoreboard players add #RArmTexture Temp 1
scoreboard players add #LArmTexture Temp 2
scoreboard players add #HeadTexture Temp 3

execute positioned ~ ~-1.7 ~ run item replace entity @e[type=villager,sort=nearest,limit=1,tag=detailed_npc] weapon.mainhand with raw_gold
execute positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] weapon.mainhand with raw_gold
execute positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] weapon.offhand with raw_gold
execute positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] armor.head with raw_gold

execute store result entity @e[type=villager,sort=nearest,limit=1,tag=detailed_npc] HandItems[0].tag.CustomModelData int 1 run scoreboard players get #BodyTexture Temp
execute store result entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] HandItems[0].tag.CustomModelData int 1 run scoreboard players get #RArmTexture Temp
execute store result entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] HandItems[1].tag.CustomModelData int 1 run scoreboard players get #LArmTexture Temp
execute store result entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get #HeadTexture Temp


tag @s add detailed