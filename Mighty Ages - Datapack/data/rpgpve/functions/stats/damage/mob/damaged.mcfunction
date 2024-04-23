#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------SETUP------------------#
scoreboard players set @s DamageTaken 1
scoreboard players set @s IconColor 0
execute if score #UsedProjectile Dummy matches 1 run tag @e[type=#minecraft:arrows,sort=nearest,distance=..8,limit=1] add Attacker
#-------------CHANGE HEALTH--------------#
execute if score #UsedProjectile Dummy matches 1 on attacker at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.6 1
#-----------CALCULATE DAMAGE-------------#
function rpgpve:stats/calculate/damages
#-------------REMOVE HEALTH--------------#
function rpgpve:stats/damage/mob/remove_health
#-------------DAMAGE RECORD--------------#
execute unless score #UsedProjectile Dummy matches 1 on attacker run function rpgpve:game/records/highest_melee/check
#--------------UPDATE BAR----------------#
execute if entity @s[tag=!Boss] run function rpgpve:stats/health_bar/update
#--------------DAMAGE ICON---------------#
execute at @s on attacker facing entity @s eyes positioned ~ ~0.25 ~ run summon minecraft:text_display ^ ^ ^1.5 {Tags:["KillTimer","DamageDealt","DamageDealtNew"],billboard:"center",width:2f,height:0.5f,view_range:0.25f}
scoreboard players set @e[type=text_display,tag=DamageDealtNew,limit=1] KillTimer 20
function rpgpve:stats/damage/icon
#-----------KILL IF NO HEALTH------------#
execute if score @s Health matches ..0 run function rpgpve:stats/damage/mob/kill
#-----------------RESET------------------#
kill @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1]
schedule function rpgpve:stats/damage/mob/remove_damaged_score 1t replace
#----------------------------------------#
