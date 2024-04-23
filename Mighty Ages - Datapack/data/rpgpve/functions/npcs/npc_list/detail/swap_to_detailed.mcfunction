summon villager ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["NPC","detailed_npc","DontRegister"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b},{id:"minecraft:invisibility",amplifier:5b,duration:2147483647,show_particles:0b}],Offers:{}}
summon skeleton ~ ~-1.7 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Team:"nocol",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["NPC","detailed_npc","DontRegister"],active_effects:[{id:"minecraft:fire_resistance",amplifier:0b,duration:2147483647,show_particles:0b},{id:"minecraft:invisibility",amplifier:0b,duration:2147483647,show_particles:0b},{id:"minecraft:invisibility",amplifier:5b,duration:2147483647,show_particles:0b}]}

team join nocol @e[type=#rpgpve:npc_entities,tag=NPC] 
execute as @e[type=#rpgpve:npc_entities,tag=detailed_npc,sort=nearest,limit=2] run data modify entity @s Rotation set from entity @e[type=#rpgpve:npc_entities,tag=PlayerNPC,sort=nearest,limit=1] Rotation

item replace entity @s armor.head with air

#SET TAG
execute positioned ~ ~-1.7 ~ run data modify entity @e[type=villager,sort=nearest,limit=1,tag=detailed_npc] Tags set from entity @s ArmorItems[2].components."minecraft:custom_data".Tags

scoreboard players operation #NPCSkin Dummy = @s NPC_Skin
scoreboard players operation #NPCSkin Dummy *= #c5 Constant

scoreboard players operation #BodyTexture Dummy = #NPCSkin Dummy
scoreboard players operation #RArmTexture Dummy = #NPCSkin Dummy
scoreboard players operation #LArmTexture Dummy = #NPCSkin Dummy
scoreboard players operation #HeadTexture Dummy = #NPCSkin Dummy

scoreboard players add #RArmTexture Dummy 1
scoreboard players add #LArmTexture Dummy 2
scoreboard players add #HeadTexture Dummy 3

execute positioned ~ ~-1.7 ~ run item replace entity @e[type=villager,sort=nearest,limit=1,tag=detailed_npc] weapon.mainhand with raw_gold
execute positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] weapon.mainhand with raw_gold
execute positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] weapon.offhand with raw_gold
execute positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] armor.head with raw_gold

execute store result entity @e[type=villager,sort=nearest,limit=1,tag=detailed_npc] HandItems[0].components.'minecraft:custom_model_data' int 1 run scoreboard players get #BodyTexture Dummy
execute store result entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] HandItems[0].components.'minecraft:custom_model_data' int 1 run scoreboard players get #RArmTexture Dummy
execute store result entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] HandItems[1].components.'minecraft:custom_model_data' int 1 run scoreboard players get #LArmTexture Dummy
execute store result entity @e[type=skeleton,sort=nearest,limit=1,tag=detailed_npc] ArmorItems[3].components.'minecraft:custom_model_data' int 1 run scoreboard players get #HeadTexture Dummy


tag @s add detailed