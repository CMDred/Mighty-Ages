#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
data merge entity @s {CustomName:'{"text":"Temporary Upgrades"}'}

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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:10b,tag:{MenuItem:1b}}]}] if score #CurrentBattleWave Temp matches 5.. if score @a[tag=ThisPlayer,limit=1] ProjProt matches ..0 run function rpgpve:menu/menus/end_knight/try_buy/proj_prot
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:12b,tag:{MenuItem:1b}}]}] if score #CurrentBattleWave Temp matches 10.. if score @a[tag=ThisPlayer,limit=1] Speed matches ..0 run function rpgpve:menu/menus/end_knight/try_buy/speed
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:14b,tag:{MenuItem:1b}}]}] if score #CurrentBattleWave Temp matches 10.. if score @a[tag=ThisPlayer,limit=1] FireRes matches ..0 run function rpgpve:menu/menus/end_knight/try_buy/fire_res
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:16b,tag:{MenuItem:1b}}]}] if score #CurrentBattleWave Temp matches 30.. if score @a[tag=ThisPlayer,limit=1] Strength matches ..0 run function rpgpve:menu/menus/end_knight/try_buy/strength
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:9b,tag:{MenuItem:1b}}]}] run scoreboard players set @s M_NewPage 9

#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" ","color":"red","italic":false}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 2b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 3b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 10b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 11b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 12b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 13b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 14b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 15b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}},{Slot: 16b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}]}

loot replace entity @s container.9 loot rpgpve:menu/back_arrow
loot replace entity @s container.0 loot rpgpve:menu/end_knight/infos
execute if score SharedPurse GameSettings matches 1 run scoreboard players operation @a[tag=ThisPlayer] TotalGold = #SharedPurse Temp
loot replace entity @s container.18 loot rpgpve:menu/gold_pouch
data modify entity @s Items[0].tag.Costs set value [0,0,0,0]


loot replace entity @s container.10 loot rpgpve:menu/end_knight/projectile_protection
scoreboard players operation #HasBought Temp = @a[tag=ThisPlayer,limit=1] ProjProt
scoreboard players operation #Cost Temp = @a[tag=ThisPlayer,limit=1] ProjProtCost
data modify storage rpgpve:endknight MenuItem set from entity @s Items[{Slot:10b}]
scoreboard players set #WaveUnlocked Temp 5
function rpgpve:menu/menus/end_knight/get_item
data modify entity @s Items[{Slot:10b}] set from storage rpgpve:endknight MenuItem
execute store result entity @s Items[0].tag.Costs[0] int 1 run scoreboard players get #Cost Temp


loot replace entity @s container.12 loot rpgpve:menu/end_knight/speed
scoreboard players operation #HasBought Temp = @a[tag=ThisPlayer,limit=1] Speed
scoreboard players operation #Cost Temp = @a[tag=ThisPlayer,limit=1] SpeedCost
data modify storage rpgpve:endknight MenuItem set from entity @s Items[{Slot:12b}]
scoreboard players set #WaveUnlocked Temp 10
function rpgpve:menu/menus/end_knight/get_item
data modify entity @s Items[{Slot:12b}] set from storage rpgpve:endknight MenuItem
execute store result entity @s Items[0].tag.Costs[1] int 1 run scoreboard players get #Cost Temp

loot replace entity @s container.14 loot rpgpve:menu/end_knight/fire_resistance
scoreboard players operation #HasBought Temp = @a[tag=ThisPlayer,limit=1] FireRes
scoreboard players operation #Cost Temp = @a[tag=ThisPlayer,limit=1] FireResCost
data modify storage rpgpve:endknight MenuItem set from entity @s Items[{Slot:14b}]
scoreboard players set #WaveUnlocked Temp 10
function rpgpve:menu/menus/end_knight/get_item
data modify entity @s Items[{Slot:14b}] set from storage rpgpve:endknight MenuItem
execute store result entity @s Items[0].tag.Costs[2] int 1 run scoreboard players get #Cost Temp


loot replace entity @s container.16 loot rpgpve:menu/end_knight/strength
scoreboard players operation #HasBought Temp = @a[tag=ThisPlayer,limit=1] Strength
scoreboard players operation #Cost Temp = @a[tag=ThisPlayer,limit=1] StrengthCost
data modify storage rpgpve:endknight MenuItem set from entity @s Items[{Slot:16b}]
scoreboard players set #WaveUnlocked Temp 30
function rpgpve:menu/menus/end_knight/get_item
data modify entity @s Items[{Slot:16b}] set from storage rpgpve:endknight MenuItem
execute store result entity @s Items[0].tag.Costs[3] int 1 run scoreboard players get #Cost Temp
#------------------------------------------#