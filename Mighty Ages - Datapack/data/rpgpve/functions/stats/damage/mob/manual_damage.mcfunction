#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------SETUP------------------#
scoreboard players set @s DamageTaken 1
execute on attacker run scoreboard players set #AttackerExists Dummy 1
#-------------REMOVE HEALTH--------------#
function rpgpve:stats/damage/mob/remove_health
#--------------UPDATE BAR----------------#
execute if score @s Health matches ..0 run scoreboard players set @s Health 0
scoreboard players operation #HealthBar Health = @s Health
scoreboard players operation #HealthBar MaxHealth = @s MaxHealth
data modify storage rpgpve:health_bar Name set from entity @s ArmorItems[3].components."minecraft:custom_data".MobName
execute if entity @s[tag=!Boss] run function rpgpve:stats/health_bar/update
#--------------DAMAGE ICON---------------#
execute if score @s DamageType matches 1..2 run scoreboard players set @s IconColor 2
execute if score @s DamageType matches 3 run scoreboard players set @s IconColor 1
execute if score @s DamageType matches 4 run scoreboard players set @s IconColor 6
execute if score @s DamageType matches 6..7 run scoreboard players set @s IconColor 3
execute if score @s DamageType matches 8 run scoreboard players set @s IconColor 4
execute if score @s DamageType matches 9 run scoreboard players set @s IconColor 2
execute if score @s DamageType matches 10 run scoreboard players set @s IconColor 3
execute if score @s DamageType matches 101 run scoreboard players set @s IconColor 0
execute if score @s DamageType matches 102 run scoreboard players set @s IconColor 6

execute if score #AttackerExists Dummy matches 1 at @s on attacker facing entity @s eyes positioned ~ ~0.25 ~ run summon minecraft:text_display ^ ^ ^1.5 {Tags:["KillTimer","DamageDealt","DamageDealtNew"],billboard:"center",width:2f,height:0.5f,view_range:0.25f}
execute if score #AttackerExists Dummy matches 0 at @s positioned ~ ~1 ~ run summon minecraft:text_display ^ ^ ^1.5 {Tags:["KillTimer","DamageDealt","DamageDealtNew"],billboard:"center",billboard:"center",width:2f,height:0.5f,view_range:0.25f}
scoreboard players set @e[type=text_display,tag=DamageDealtNew,limit=1] KillTimer 20
function rpgpve:stats/damage/icon
#-----------KILL IF NO HEALTH------------#
execute if score @s Health matches ..0 run function rpgpve:stats/damage/mob/kill
#-----------------RESET------------------#
schedule function rpgpve:stats/damage/mob/remove_damaged_score 1t replace
scoreboard players set #AttackerExists Dummy 0
#----------------------------------------#
