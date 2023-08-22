#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
data merge entity @s {CustomName:'{"text":"Armorsmith"}'}

execute unless data entity @s Items[{Slot:0b}].tag.MenuItem run function rpgpve:menu/return_item/0
execute unless data entity @s Items[{Slot:1b}].tag.MenuItem run function rpgpve:menu/return_item/1
execute unless data entity @s Items[{Slot:2b}].tag.MenuItem run function rpgpve:menu/return_item/2
execute unless data entity @s Items[{Slot:3b}].tag.MenuItem run function rpgpve:menu/return_item/3
execute unless data entity @s Items[{Slot:4b}].tag.MenuItem run function rpgpve:menu/return_item/4
execute unless data entity @s Items[{Slot:5b}].tag.MenuItem run function rpgpve:menu/return_item/5
execute unless data entity @s Items[{Slot:6b}].tag.MenuItem run function rpgpve:menu/return_item/6
execute unless data entity @s Items[{Slot:7b}].tag.MenuItem run function rpgpve:menu/return_item/7
execute unless data entity @s Items[{Slot:8b}].tag.MenuItem run function rpgpve:menu/return_item/8
execute unless data entity @s Items[{Slot:9b}].tag.MenuItem run function rpgpve:menu/return_item/9
execute unless data entity @s Items[{Slot:10b}].tag.MenuItem run function rpgpve:menu/return_item/10
execute unless data entity @s Items[{Slot:11b}].tag.MenuItem run function rpgpve:menu/return_item/11
execute unless data entity @s Items[{Slot:12b}].tag.MenuItem run function rpgpve:menu/return_item/12
execute unless data entity @s Items[{Slot:13b}].tag.MenuItem run function rpgpve:menu/return_item/13
execute unless data entity @s Items[{Slot:14b}].tag.MenuItem run function rpgpve:menu/return_item/14
execute unless data entity @s Items[{Slot:15b}].tag.MenuItem run function rpgpve:menu/return_item/15
execute unless data entity @s Items[{Slot:16b}].tag.MenuItem run function rpgpve:menu/return_item/16
execute unless data entity @s Items[{Slot:17b}].tag.MenuItem run function rpgpve:menu/return_item/17
execute unless data entity @s Items[{Slot:18b}].tag.MenuItem run function rpgpve:menu/return_item/18
execute unless data entity @s Items[{Slot:19b}].tag.MenuItem run function rpgpve:menu/return_item/19
execute unless data entity @s Items[{Slot:20b}].tag.MenuItem run function rpgpve:menu/return_item/20
execute unless data entity @s Items[{Slot:21b}].tag.MenuItem run function rpgpve:menu/return_item/21
execute unless data entity @s Items[{Slot:22b}].tag.MenuItem run function rpgpve:menu/return_item/22
execute unless data entity @s Items[{Slot:23b}].tag.MenuItem run function rpgpve:menu/return_item/23
execute unless data entity @s Items[{Slot:24b}].tag.MenuItem run function rpgpve:menu/return_item/24
execute unless data entity @s Items[{Slot:25b}].tag.MenuItem run function rpgpve:menu/return_item/25
execute unless data entity @s Items[{Slot:26b}].tag.MenuItem run function rpgpve:menu/return_item/26

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:22b,tag:{MenuItem:1b}}]}] run function rpgpve:menu/close_menu
execute unless score @a[tag=ThisPlayer,limit=1] HelmetTierPurchased matches 6.. if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:10b,tag:{MenuItem:1b}}]}] run function rpgpve:menu/menus/armor_smith/try_upgrade/helmet
execute unless score @a[tag=ThisPlayer,limit=1] ChestplateTierPurchased matches 6.. if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:12b,tag:{MenuItem:1b}}]}] run function rpgpve:menu/menus/armor_smith/try_upgrade/chestplate
execute unless score @a[tag=ThisPlayer,limit=1] LeggingsTierPurchased matches 6.. if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:14b,tag:{MenuItem:1b}}]}] run function rpgpve:menu/menus/armor_smith/try_upgrade/leggings
execute unless score @a[tag=ThisPlayer,limit=1] BootsTierPurchased matches 6.. if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:16b,tag:{MenuItem:1b}}]}] run function rpgpve:menu/menus/armor_smith/try_upgrade/boots

#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" ","color":"red","italic":false}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 2b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 3b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 10b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 11b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 12b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 13b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 14b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 15b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}},{Slot: 16b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}]}

loot replace entity @s container.0 loot rpgpve:menu/armorsmith/infos
execute if score SharedPurse GameSettings matches 1 run scoreboard players operation @a[tag=ThisPlayer] TotalGold = #SharedPurse Temp
loot replace entity @s container.18 loot rpgpve:menu/gold_pouch

execute if score @a[tag=ThisPlayer,limit=1] HelmetTierPurchased matches 0 run loot replace entity @s container.10 loot rpgpve:items/armors/tier1/tier1helmet
execute if score @a[tag=ThisPlayer,limit=1] HelmetTierPurchased matches 1 run loot replace entity @s container.10 loot rpgpve:items/armors/tier2/tier2helmet
execute if score @a[tag=ThisPlayer,limit=1] HelmetTierPurchased matches 2 run loot replace entity @s container.10 loot rpgpve:items/armors/tier3/tier3helmet
execute if score @a[tag=ThisPlayer,limit=1] HelmetTierPurchased matches 3 run loot replace entity @s container.10 loot rpgpve:items/armors/tier4/tier4helmet
execute if score @a[tag=ThisPlayer,limit=1] HelmetTierPurchased matches 4 run loot replace entity @s container.10 loot rpgpve:items/armors/tier5/tier5helmet
execute if score @a[tag=ThisPlayer,limit=1] HelmetTierPurchased matches 5 run loot replace entity @s container.10 loot rpgpve:items/armors/tier6/tier6helmet
execute if score @a[tag=ThisPlayer,limit=1] HelmetTierPurchased matches 6 run loot replace entity @s container.10 loot rpgpve:items/armors/tier6/tier6helmet
data modify entity @s Items[{Slot:10b}].tag.MenuItem set value 1b
data modify storage rpgpve:armorsmith MenuItem set from entity @s Items[{Slot:10b}]
execute unless score @a[tag=ThisPlayer,limit=1] HelmetTierPurchased matches 6.. run function rpgpve:menu/menus/armor_smith/get_cost
execute if score @a[tag=ThisPlayer,limit=1] HelmetTierPurchased matches 6.. run function rpgpve:menu/menus/armor_smith/own_piece
data modify entity @s Items[{Slot:10b}] set from storage rpgpve:armorsmith MenuItem 

data modify entity @s Items[{Slot:0b}].tag.Costs append from entity @s Items[{Slot:10b}].tag.RPG.GoldCost


execute if score @a[tag=ThisPlayer,limit=1] ChestplateTierPurchased matches 0 run loot replace entity @s container.12 loot rpgpve:items/armors/tier1/tier1chestplate
execute if score @a[tag=ThisPlayer,limit=1] ChestplateTierPurchased matches 1 run loot replace entity @s container.12 loot rpgpve:items/armors/tier2/tier2chestplate
execute if score @a[tag=ThisPlayer,limit=1] ChestplateTierPurchased matches 2 run loot replace entity @s container.12 loot rpgpve:items/armors/tier3/tier3chestplate
execute if score @a[tag=ThisPlayer,limit=1] ChestplateTierPurchased matches 3 run loot replace entity @s container.12 loot rpgpve:items/armors/tier4/tier4chestplate
execute if score @a[tag=ThisPlayer,limit=1] ChestplateTierPurchased matches 4 run loot replace entity @s container.12 loot rpgpve:items/armors/tier5/tier5chestplate
execute if score @a[tag=ThisPlayer,limit=1] ChestplateTierPurchased matches 5 run loot replace entity @s container.12 loot rpgpve:items/armors/tier6/tier6chestplate
execute if score @a[tag=ThisPlayer,limit=1] ChestplateTierPurchased matches 6 run loot replace entity @s container.12 loot rpgpve:items/armors/tier6/tier6chestplate
data modify entity @s Items[{Slot:12b}].tag.MenuItem set value 1b
data modify entity @s Items[{Slot:0b}].tag.Costs append from entity @s Items[{Slot:12b}].tag.RPG.GoldCost
data modify storage rpgpve:armorsmith MenuItem set from entity @s Items[{Slot:12b}]
execute unless score @a[tag=ThisPlayer,limit=1] ChestplateTierPurchased matches 6.. run function rpgpve:menu/menus/armor_smith/get_cost
execute if score @a[tag=ThisPlayer,limit=1] ChestplateTierPurchased matches 6.. run function rpgpve:menu/menus/armor_smith/own_piece
data modify entity @s Items[{Slot:12b}] set from storage rpgpve:armorsmith MenuItem 


execute if score @a[tag=ThisPlayer,limit=1] LeggingsTierPurchased matches 0 run loot replace entity @s container.14 loot rpgpve:items/armors/tier1/tier1leggings
execute if score @a[tag=ThisPlayer,limit=1] LeggingsTierPurchased matches 1 run loot replace entity @s container.14 loot rpgpve:items/armors/tier2/tier2leggings
execute if score @a[tag=ThisPlayer,limit=1] LeggingsTierPurchased matches 2 run loot replace entity @s container.14 loot rpgpve:items/armors/tier3/tier3leggings
execute if score @a[tag=ThisPlayer,limit=1] LeggingsTierPurchased matches 3 run loot replace entity @s container.14 loot rpgpve:items/armors/tier4/tier4leggings
execute if score @a[tag=ThisPlayer,limit=1] LeggingsTierPurchased matches 4 run loot replace entity @s container.14 loot rpgpve:items/armors/tier5/tier5leggings
execute if score @a[tag=ThisPlayer,limit=1] LeggingsTierPurchased matches 5 run loot replace entity @s container.14 loot rpgpve:items/armors/tier6/tier6leggings
execute if score @a[tag=ThisPlayer,limit=1] LeggingsTierPurchased matches 6 run loot replace entity @s container.14 loot rpgpve:items/armors/tier6/tier6leggings
data modify entity @s Items[{Slot:14b}].tag.MenuItem set value 1b
data modify entity @s Items[{Slot:0b}].tag.Costs append from entity @s Items[{Slot:14b}].tag.RPG.GoldCost
data modify storage rpgpve:armorsmith MenuItem set from entity @s Items[{Slot:14b}]
execute unless score @a[tag=ThisPlayer,limit=1] LeggingsTierPurchased matches 6.. run function rpgpve:menu/menus/armor_smith/get_cost
execute if score @a[tag=ThisPlayer,limit=1] LeggingsTierPurchased matches 6.. run function rpgpve:menu/menus/armor_smith/own_piece
data modify entity @s Items[{Slot:14b}] set from storage rpgpve:armorsmith MenuItem 


execute if score @a[tag=ThisPlayer,limit=1] BootsTierPurchased matches 0 run loot replace entity @s container.16 loot rpgpve:items/armors/tier1/tier1boots
execute if score @a[tag=ThisPlayer,limit=1] BootsTierPurchased matches 1 run loot replace entity @s container.16 loot rpgpve:items/armors/tier2/tier2boots
execute if score @a[tag=ThisPlayer,limit=1] BootsTierPurchased matches 2 run loot replace entity @s container.16 loot rpgpve:items/armors/tier3/tier3boots
execute if score @a[tag=ThisPlayer,limit=1] BootsTierPurchased matches 3 run loot replace entity @s container.16 loot rpgpve:items/armors/tier4/tier4boots
execute if score @a[tag=ThisPlayer,limit=1] BootsTierPurchased matches 4 run loot replace entity @s container.16 loot rpgpve:items/armors/tier5/tier5boots
execute if score @a[tag=ThisPlayer,limit=1] BootsTierPurchased matches 5 run loot replace entity @s container.16 loot rpgpve:items/armors/tier6/tier6boots
execute if score @a[tag=ThisPlayer,limit=1] BootsTierPurchased matches 6 run loot replace entity @s container.16 loot rpgpve:items/armors/tier6/tier6boots
data modify entity @s Items[{Slot:16b}].tag.MenuItem set value 1b
data modify entity @s Items[{Slot:0b}].tag.Costs append from entity @s Items[{Slot:16b}].tag.RPG.GoldCost
data modify storage rpgpve:armorsmith MenuItem set from entity @s Items[{Slot:16b}]
execute unless score @a[tag=ThisPlayer,limit=1] BootsTierPurchased matches 6.. run function rpgpve:menu/menus/armor_smith/get_cost
execute if score @a[tag=ThisPlayer,limit=1] BootsTierPurchased matches 6.. run function rpgpve:menu/menus/armor_smith/own_piece
data modify entity @s Items[{Slot:16b}] set from storage rpgpve:armorsmith MenuItem 


#------------------------------------------#