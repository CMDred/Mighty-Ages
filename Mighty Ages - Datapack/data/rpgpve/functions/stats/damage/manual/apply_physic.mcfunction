#--------------MANUAL DAMAGE---------------#
scoreboard players operation #FinalDamage Dummy = @s ApplyPhysicDamage
scoreboard players set @s DamageType 101
damage @s 0.003 rpgpve:manual_damage by @e[type=#rpgpve:has_health_bar,tag=Attacker,limit=1]
function rpgpve:stats/damage/manual_damage_check
scoreboard players reset @s DamageType
scoreboard players reset @s ApplyPhysicDamage
tag @e remove Attacker
#------------------------------------------#
