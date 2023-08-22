#---------------DAMAGE ICON----------------#
execute in minecraft:overworld run setblock 700000 2 700000 air

scoreboard players reset #base_number Temp
execute if score #FinalDamage Temp matches 1000.. run scoreboard players operation #base_number Temp = #FinalDamage Temp
execute if score #FinalDamage Temp matches 1000.. run function rpgpve:split_comma_numbers/begin

execute unless score @s IconColor matches 1..7 in minecraft:overworld run function rpgpve:stats/damage/icon/default

execute if score @s IconColor matches 1 in minecraft:overworld run function rpgpve:stats/damage/icon/iconcolor_1
execute if score @s IconColor matches 2 in minecraft:overworld run function rpgpve:stats/damage/icon/iconcolor_2
execute if score @s IconColor matches 3 in minecraft:overworld run function rpgpve:stats/damage/icon/iconcolor_3
execute if score @s IconColor matches 4 in minecraft:overworld run function rpgpve:stats/damage/icon/iconcolor_4
execute if score @s IconColor matches 5 in minecraft:overworld run function rpgpve:stats/damage/icon/iconcolor_5
execute if score @s IconColor matches 6 in minecraft:overworld run function rpgpve:stats/damage/icon/iconcolor_6
execute if score @s IconColor matches 7 in minecraft:overworld run function rpgpve:stats/damage/icon/iconcolor_7
scoreboard players reset @s IconColor

execute in minecraft:overworld run data modify entity @e[type=text_display,tag=DamageDealtNew,limit=1] text set from block 700000 2 700000 front_text.messages[0]

tag @e[type=text_display,tag=DamageDealtNew,limit=1] remove DamageDealtNew
#------------------------------------------#
