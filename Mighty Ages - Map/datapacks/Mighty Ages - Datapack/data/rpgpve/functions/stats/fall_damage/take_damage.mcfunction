#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------APPLY REDUCTIONS-------------#
scoreboard players operation #FinalDamage Temp = @s Fall
scoreboard players operation #FinalDamage Temp *= #c25 Constant
scoreboard players remove #FinalDamage Temp 120
scoreboard players operation #FinalDamage Temp /= #c10 Constant

scoreboard players set @s DamageType 100
damage @s 0.003 rpgpve:manual_damage_bypasses_cooldown
function rpgpve:stats/damage/manual_damage_check
scoreboard players reset @s DamageType
#------------------------------------------#