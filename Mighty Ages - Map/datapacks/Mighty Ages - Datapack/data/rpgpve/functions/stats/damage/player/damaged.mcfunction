#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#--------------CALC DAMAGE---------------#
scoreboard players operation #RawDamage Temp = @s DamageTaken
scoreboard players operation #RawDamage Temp /= #c10 Constant
execute if score #UsedProjectile Temp matches 1 as @e[type=#minecraft:arrows,sort=nearest,limit=1] run scoreboard players operation #RawDamage Temp = @s ArrowDamage
scoreboard players operation #Defense Temp = @s PhysicDefense
function rpgpve:stats/calculate/damage_with_defense
scoreboard players operation #FinalDamage Temp = #DefensedDamage Temp
#-------------------FIX--------------------#
execute if score #FinalDamage Temp matches ..-1 run scoreboard players set #FinalDamage Temp 0
#-------------CHANGE HEALTH--------------#
scoreboard players operation @s Health -= #FinalDamage Temp
#---------------DAMAGE ICON----------------#
execute at @s on attacker facing entity @s eyes positioned ~ ~0.25 ~ run summon minecraft:text_display ^ ^ ^1.5 {Tags:["KillTimer","DamageDealt","DamageDealtNew"],billboard:"center",billboard:"center",width:2f,height:0.5f,view_range:0.25f}
scoreboard players set @e[type=text_display,tag=DamageDealtNew,limit=1] KillTimer 20
function rpgpve:stats/damage/icon
#-----------REMOVE TO SCALED HP------------#
execute store result score #DmgScaled Temp run scoreboard players operation #FinalDamage Temp *= #c10 Constant
scoreboard players operation @s HealthScaled -= #DmgScaled Temp
#-------------KILL ENDER WISP--------------#
execute on attacker if entity @s[tag=EnderWisp] as @p run function rpgpve:game/battle_wave/monsters/ai/ender_wisp/damage
#------------------DEATH-------------------#
execute if score @s Health matches ..0 run function rpgpve:game/death/pre
#------------------RESET-------------------#
advancement revoke @s only rpgpve:stats/entity_hurt_player/player_damaged_player
advancement revoke @s only rpgpve:stats/entity_hurt_player/mob_damaged_player
scoreboard players set @s DamageTaken 69420
#------------------------------------------#
