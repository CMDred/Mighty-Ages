#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-------------CHANGE HEALTH--------------#
scoreboard players operation #Defense Temp = @s PhysicDefense
execute if score @s DamageType matches 102 run scoreboard players operation #Defense Temp = @s MagicDefense

scoreboard players operation #RawDamage Temp = #FinalDamage Temp
function rpgpve:stats/calculate/damage_with_defense
scoreboard players operation #FinalDamage Temp = #DefensedDamage Temp
scoreboard players operation @s Health -= #FinalDamage Temp
#---------------DAMAGE ICON----------------#
execute on attacker run scoreboard players set #AttackerExists Temp 1
execute if score @s DamageType matches 1..2 run scoreboard players set @s IconColor 2
execute if score @s DamageType matches 3 run scoreboard players set @s IconColor 1
execute if score @s DamageType matches 4 run scoreboard players set @s IconColor 6
execute if score @s DamageType matches 6..7 run scoreboard players set @s IconColor 3
execute if score @s DamageType matches 8 run scoreboard players set @s IconColor 4
execute if score @s DamageType matches 9 run scoreboard players set @s IconColor 2
execute if score @s DamageType matches 10 run scoreboard players set @s IconColor 3
execute if score @s DamageType matches 101 run scoreboard players set @s IconColor 0
execute if score @s DamageType matches 102 run scoreboard players set @s IconColor 6
execute if score @s DamageType matches 1..10 run scoreboard players set #EnvironmentalDamageExists Temp 1
execute if score #AttackerExists Temp matches 1 at @s on attacker facing entity @s eyes positioned ~ ~0.25 ~ run summon minecraft:text_display ^ ^ ^1.5 {Tags:["KillTimer","DamageDealt","DamageDealtNew"],billboard:"center",width:2f,height:0.5f,view_range:0.25f}
execute if score #AttackerExists Temp matches 0 at @s positioned ~ ~1 ~ run summon minecraft:text_display ^ ^ ^1.5 {Tags:["KillTimer","DamageDealt","DamageDealtNew"],billboard:"center",width:2f,height:0.5f,view_range:0.25f}
scoreboard players set @e[type=text_display,tag=DamageDealtNew,limit=1] KillTimer 20
function rpgpve:stats/damage/icon
#------------------DEATH-------------------#
scoreboard players set #AttackerExists Temp 0
execute if score @s Health matches ..0 run function rpgpve:game/death/pre
scoreboard players set #EnvironmentalDamageExists Temp 0
#-----------REMOVE TO SCALED HP------------#
execute store result score #DmgScaled Temp run scoreboard players operation #FinalDamage Temp *= #c10 Constant
scoreboard players operation @s HealthScaled -= #DmgScaled Temp
#------------------RESET-------------------#
scoreboard players set @s DamageTaken 69420
#------------------------------------------#
