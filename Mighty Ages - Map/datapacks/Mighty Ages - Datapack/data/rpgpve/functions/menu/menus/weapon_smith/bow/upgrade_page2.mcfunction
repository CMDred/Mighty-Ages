#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
data merge entity @s {CustomName:'{"text":"Weaponsmith"}'}

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
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:9b,tag:{MenuItem:1b}}]}] run scoreboard players set @s M_NewPage 5

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:10b,tag:{MenuItem:1b}}]}] run function rpgpve:menu/menus/weapon_smith/bow/try_buy/tier5
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:12b,tag:{MenuItem:1b}}]}] run function rpgpve:menu/menus/weapon_smith/bow/try_buy/tier6
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:14b,tag:{MenuItem:1b}}]}] run function rpgpve:menu/menus/weapon_smith/bow/try_buy/tier7
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:16b,tag:{MenuItem:1b}}]}] run function rpgpve:menu/menus/weapon_smith/bow/try_buy/tier8


#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" ","color":"red","italic":false}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 2b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 3b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 10b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 11b, id: "minecraft:white_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 12b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 13b, id: "minecraft:white_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 14b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 15b, id: "minecraft:white_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}},{Slot: 16b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}]}

loot replace entity @s container.9 loot rpgpve:menu/back_arrow
execute if score SharedPurse GameSettings matches 1 run scoreboard players operation @a[tag=ThisPlayer] TotalGold = #SharedPurse Temp
loot replace entity @s container.18 loot rpgpve:menu/gold_pouch

# Weapons
# Tier 5
loot replace entity @s container.10 loot rpgpve:items/weapons/bows/tier5bow
data modify entity @s Items[{Slot:10b}].tag.MenuItem set value 1b
scoreboard players set #Tier Temp 5
scoreboard players set #Type Temp 1
scoreboard players set #Style Temp 2
data modify storage rpgpve:weaponsmith MenuItem set from entity @s Items[{Slot:10b}]
function rpgpve:menu/menus/weapon_smith/get_item
data modify entity @s Items[{Slot:10b}] set from storage rpgpve:weaponsmith MenuItem
data modify entity @s Items[{Slot:0b}].tag.Costs append from storage rpgpve:weaponsmith MenuItem.tag.RPG.GoldCost

# Tier 6
loot replace entity @s container.12 loot rpgpve:items/weapons/bows/tier6bow
data modify entity @s Items[{Slot:12b}].tag.MenuItem set value 1b
scoreboard players set #Tier Temp 6
scoreboard players set #Type Temp 1
scoreboard players set #Style Temp 2
data modify storage rpgpve:weaponsmith MenuItem set from entity @s Items[{Slot:12b}]
function rpgpve:menu/menus/weapon_smith/get_item
data modify entity @s Items[{Slot:12b}] set from storage rpgpve:weaponsmith MenuItem
data modify entity @s Items[{Slot:0b}].tag.Costs append from storage rpgpve:weaponsmith MenuItem.tag.RPG.GoldCost

# Tier 7
loot replace entity @s container.14 loot rpgpve:items/weapons/bows/tier7bow
data modify entity @s Items[{Slot:14b}].tag.MenuItem set value 1b
scoreboard players set #Tier Temp 7
scoreboard players set #Type Temp 1
scoreboard players set #Style Temp 2
data modify storage rpgpve:weaponsmith MenuItem set from entity @s Items[{Slot:14b}]
function rpgpve:menu/menus/weapon_smith/get_item
data modify entity @s Items[{Slot:14b}] set from storage rpgpve:weaponsmith MenuItem
data modify entity @s Items[{Slot:0b}].tag.Costs append from storage rpgpve:weaponsmith MenuItem.tag.RPG.GoldCost

# Tier 8
loot replace entity @s container.16 loot rpgpve:items/weapons/bows/tier8bow
data modify entity @s Items[{Slot:16b}].tag.MenuItem set value 1b
scoreboard players set #Tier Temp 8
scoreboard players set #Type Temp 1
scoreboard players set #Style Temp 2
data modify storage rpgpve:weaponsmith MenuItem set from entity @s Items[{Slot:16b}]
function rpgpve:menu/menus/weapon_smith/get_item
data modify entity @s Items[{Slot:16b}] set from storage rpgpve:weaponsmith MenuItem
data modify entity @s Items[{Slot:0b}].tag.Costs append from storage rpgpve:weaponsmith MenuItem.tag.RPG.GoldCost
#------------------------------------------#