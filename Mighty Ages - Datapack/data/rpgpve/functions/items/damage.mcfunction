#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------APPLY REDUCTIONS-------------#
execute unless score #StaffPiercing Dummy matches 1 run scoreboard players reset #Reach Dummy

execute if entity @s[tag=AlreadyHit] run return 0

scoreboard players operation #FinalDamage Dummy = #DamageDealt Dummy
scoreboard players operation @s DamageType = #DamageTypeDealt Dummy
damage @s 0.003 rpgpve:manual_damage_bypasses_cooldown by @p[tag=Attacker]
function rpgpve:stats/damage/manual_damage_check
scoreboard players reset @s DamageType
tag @a remove Attacker
tag @s add AlreadyHit
#------------------------------------------#