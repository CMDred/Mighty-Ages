#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------BUTTONS------------------#
data merge entity @s {CustomName:'{"text":"Permanent Upgrades"}'}

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

execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:10b,tag:{MenuItem:1b}}]}] if score @a[tag=ThisPlayer,limit=1] MaxHealthUpgradeTier matches ..14 run function rpgpve:menu/menus/light_knight/try_upgrade/max_health
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:12b,tag:{MenuItem:1b}}]}] if score @a[tag=ThisPlayer,limit=1] HealthRegenUpgradeTier matches ..4 run function rpgpve:menu/menus/light_knight/try_upgrade/health_regen
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:14b,tag:{MenuItem:1b}}]}] if score #CurrentBattleWave Temp matches 20.. if score @a[tag=ThisPlayer,limit=1] MaxSkillPointUpgradeTier matches ..9 run function rpgpve:menu/menus/light_knight/try_upgrade/max_skill_point
execute if entity @s[scores={M_PageDelay=0},nbt=!{Items:[{Slot:16b,tag:{MenuItem:1b}}]}] if score #CurrentBattleWave Temp matches 20.. if score @a[tag=ThisPlayer,limit=1] SkillPointRegenUpgradeTier matches ..4 run function rpgpve:menu/menus/light_knight/try_upgrade/skill_point_regen
#---------------MENU ITEMS-----------------#
data merge entity @s {Items: [{Slot: 0b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" ","color":"red","italic":false}'}}}, {Slot: 1b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 2b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 3b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 4b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 5b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 6b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 7b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 8b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 9b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 10b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 11b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 12b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 13b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 14b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 15b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}},{Slot: 16b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 17b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 18b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 19b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 20b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 21b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 22b, id: "minecraft:barrier", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":"Close","color":"red","italic":false}'}}}, {Slot: 23b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 24b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 25b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}, {Slot: 26b, id: "minecraft:black_stained_glass_pane", Count: 1b, tag: {MenuItem:1b, display: {Name: '{"text":" "}'}}}]}
loot replace entity @s container.0 loot rpgpve:menu/light_knight/info
data modify entity @s Items[0].tag.Costs set value [0,0,0,0]

execute if score SharedPurse GameSettings matches 1 run scoreboard players operation @a[tag=ThisPlayer] TotalGold = #SharedPurse Temp
loot replace entity @s container.18 loot rpgpve:menu/gold_pouch

scoreboard players operation @s MaxHealthUpgradeTier = @a[tag=ThisPlayer,limit=1] MaxHealthUpgradeTier
scoreboard players operation #NextMaxHP Temp = @a[tag=ThisPlayer,limit=1] MaxHealthBonus
execute if score @s MaxHealthUpgradeTier matches 0..9 run scoreboard players add #NextMaxHP Temp 10
execute if score @s MaxHealthUpgradeTier matches 10.. run scoreboard players add #NextMaxHP Temp 20
function rpgpve:menu/menus/light_knight/max_health/get_cost
execute store result entity @s Items[0].tag.Costs[0] int 1 run scoreboard players get #MaxHealthCost Temp
scoreboard players operation #RomanNumIn Temp = @s MaxHealthUpgradeTier
function rpgpve:get_roman_numeral
loot replace entity @s container.10 loot rpgpve:menu/light_knight/max_health_upgrade
execute if score @s MaxHealthUpgradeTier matches 20 run data modify entity @s Items[{Slot:10b}].tag.Enchantments set value [{id:"minecraft:power",level:1s}]

scoreboard players operation @s HealthRegenUpgradeTier = @a[tag=ThisPlayer,limit=1] HealthRegenUpgradeTier
scoreboard players operation #NextHPRegen Temp = @a[tag=ThisPlayer,limit=1] HPRegenBonus
execute if score @s HealthRegenUpgradeTier matches 0..1 run scoreboard players add #NextHPRegen Temp 1
execute if score @s HealthRegenUpgradeTier matches 2..3 run scoreboard players add #NextHPRegen Temp 2
execute if score @s HealthRegenUpgradeTier matches 4 run scoreboard players add #NextHPRegen Temp 3
function rpgpve:menu/menus/light_knight/health_regen/get_cost
execute store result entity @s Items[0].tag.Costs[1] int 1 run scoreboard players get #HPRegenCost Temp
scoreboard players operation #RomanNumIn Temp = @s HealthRegenUpgradeTier
function rpgpve:get_roman_numeral
loot replace entity @s container.12 loot rpgpve:menu/light_knight/health_regen_upgrade
execute if score @s HealthRegenUpgradeTier matches 5 run data modify entity @s Items[{Slot:12b}].tag.Enchantments set value [{id:"minecraft:power",level:1s}]




scoreboard players operation @s MaxSkillPointUpgradeTier = @a[tag=ThisPlayer,limit=1] MaxSkillPointUpgradeTier
scoreboard players operation #NextMaxSP Temp = @a[tag=ThisPlayer,limit=1] MaxSkillPointBonus
execute if score @s MaxSkillPointUpgradeTier matches 0..4 run scoreboard players add #NextMaxSP Temp 20
execute if score @s MaxSkillPointUpgradeTier matches 5..6 run scoreboard players add #NextMaxSP Temp 30
execute if score @s MaxSkillPointUpgradeTier matches 7..8 run scoreboard players add #NextMaxSP Temp 40
execute if score @s MaxSkillPointUpgradeTier matches 9 run scoreboard players add #NextMaxSP Temp 60
function rpgpve:menu/menus/light_knight/max_sp/get_cost
execute store result entity @s Items[0].tag.Costs[2] int 1 run scoreboard players get #MaxSkillPointCost Temp
scoreboard players operation #RomanNumIn Temp = @s MaxSkillPointUpgradeTier
function rpgpve:get_roman_numeral
scoreboard players operation @s Temp = #CurrentBattleWave Temp
loot replace entity @s container.14 loot rpgpve:menu/light_knight/max_sp_upgrade
execute if score @s MaxSkillPointUpgradeTier matches 20 run data modify entity @s Items[{Slot:14b}].tag.Enchantments set value [{id:"minecraft:power",level:1s}]


scoreboard players operation @s SkillPointRegenUpgradeTier = @a[tag=ThisPlayer,limit=1] SkillPointRegenUpgradeTier
scoreboard players operation #NextSPRegen Temp = @a[tag=ThisPlayer,limit=1] SPRegenBonus
execute if score @s SkillPointRegenUpgradeTier matches 0..1 run scoreboard players add #NextSPRegen Temp 1
execute if score @s SkillPointRegenUpgradeTier matches 2..3 run scoreboard players add #NextSPRegen Temp 2
execute if score @s SkillPointRegenUpgradeTier matches 4 run scoreboard players add #NextSPRegen Temp 3
function rpgpve:menu/menus/light_knight/sp_regen/get_cost
execute store result entity @s Items[0].tag.Costs[3] int 1 run scoreboard players get #SPRegenCost Temp
scoreboard players operation #RomanNumIn Temp = @s SkillPointRegenUpgradeTier
function rpgpve:get_roman_numeral
scoreboard players operation @s Temp = #CurrentBattleWave Temp
loot replace entity @s container.16 loot rpgpve:menu/light_knight/sp_regen_upgrade
execute if score @s SkillPointRegenUpgradeTier matches 5 run data modify entity @s Items[{Slot:16b}].tag.Enchantments set value [{id:"minecraft:power",level:1s}]
#------------------------------------------#