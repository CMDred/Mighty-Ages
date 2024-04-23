#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#----------ENVIRONMENTAL DAMAGE------------#
scoreboard players set #FinalDamage Dummy 0
scoreboard players set #EnvironmentalDamageExists Dummy 1
execute if score @s DamageType matches 1 run function rpgpve:stats/damage/player/environmental_damage/damage_type/is_fire
execute if score @s DamageType matches 2 run function rpgpve:stats/damage/player/environmental_damage/damage_type/is_lava
execute if score @s DamageType matches 3 run function rpgpve:stats/damage/player/environmental_damage/damage_type/is_drowning
execute if score @s DamageType matches 4 run function rpgpve:stats/damage/player/environmental_damage/damage_type/is_freezing
execute if score @s DamageType matches 5 run function rpgpve:stats/damage/player/environmental_damage/damage_type/is_suffocating
execute if score @s DamageType matches 6 run function rpgpve:stats/damage/player/environmental_damage/damage_type/is_cactus
execute if score @s DamageType matches 7 run function rpgpve:stats/damage/player/environmental_damage/damage_type/is_sweet_berry_bush
execute if score @s DamageType matches 8 run function rpgpve:stats/damage/player/environmental_damage/damage_type/is_wither
execute if score @s DamageType matches 9 run function rpgpve:stats/damage/player/environmental_damage/damage_type/is_lightning
execute if score @s DamageType matches 10 run function rpgpve:stats/damage/player/environmental_damage/damage_type/is_magic
#---------------DAMAGE ICON----------------#
execute at @s positioned ~ ~1 ~ run summon minecraft:text_display ^ ^ ^1.5 {Tags:["KillTimer","DamageDealt","DamageDealtNew"],billboard:"center",width:2f,height:0.5f,view_range:0.25f}
scoreboard players set @e[type=text_display,tag=DamageDealtNew,limit=1] KillTimer 20
function rpgpve:stats/damage/icon

scoreboard players operation @s Health -= #FinalDamage Dummy
execute if score @s Health matches ..0 run function rpgpve:game/death/pre
scoreboard players reset @s DamageType
scoreboard players set #EnvironmentalDamageExists Dummy 0
#-----------REMOVE TO SCALED HP------------#
execute store result score #DmgScaled Dummy run scoreboard players operation #FinalDamage Dummy *= #c10 Constant
scoreboard players operation @s HealthScaled -= #DmgScaled Dummy
#------------------------------------------#
