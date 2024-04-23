tag @s remove detailed

execute at @s positioned ~ ~-1.7 ~ run item replace entity @e[type=villager,tag=detailed_npc,limit=1,sort=nearest] weapon with air
execute at @s positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,tag=detailed_npc,limit=1,sort=nearest] weapon.mainhand with air
execute at @s positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,tag=detailed_npc,limit=1,sort=nearest] weapon.offhand with air
execute at @s positioned ~ ~-1.7 ~ run item replace entity @e[type=skeleton,tag=detailed_npc,limit=1,sort=nearest] armor.head with air

data modify entity @s ArmorItems[2] set value {id:"minecraft:turtle_scute",Count:1b,components:{"minecraft:custom_data":{Tags:[]}}}
execute at @s positioned ~ ~-1.7 ~ run data modify entity @s ArmorItems[2].components."minecraft:custom_data".Tags set from entity @e[type=villager,tag=detailed_npc,sort=nearest,limit=1] Tags

execute at @s positioned ~ ~-1.7 ~ run tp @e[type=#rpgpve:npc_entities,tag=detailed_npc,limit=2,sort=nearest] ~ -5 ~
execute at @s positioned ~ -5 ~ run kill @e[type=#rpgpve:npc_entities,tag=detailed_npc,limit=2,sort=nearest]


scoreboard players operation #NPCSkin Dummy = @s NPC_Skin
scoreboard players operation #NPCSkin Dummy *= #c5 Constant

scoreboard players operation #UndetailedBodyTexture Dummy = #NPCSkin Dummy

scoreboard players add #UndetailedBodyTexture Dummy 4

item replace entity @s armor.head with raw_gold

execute store result entity @s ArmorItems[3].components.'minecraft:custom_model_data' int 1 run scoreboard players get #UndetailedBodyTexture Dummy