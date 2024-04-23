#===================NOTE===================#
# This function was coded by BlueCommander #
# Please don't claim this as your own work #
#   LINK www.youtube.com/c/BlueCommander   #
#==========================================#
#-------------APPLY REDUCTIONS-------------#
scoreboard players set #FallMinimum Dummy 4
scoreboard players operation @s Fall /= #c100 Constant
execute if score #FallMinimum Dummy < @s Fall run function rpgpve:stats/fall_damage/take_damage
scoreboard players reset @s Fall
#------------------------------------------#