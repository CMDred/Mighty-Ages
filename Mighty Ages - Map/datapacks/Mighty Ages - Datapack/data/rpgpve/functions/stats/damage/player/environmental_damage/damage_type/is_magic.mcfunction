#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#----------ENVIRONMENTAL DAMAGE------------#
scoreboard players operation #FinalDamage Temp = @s MaxHealth
scoreboard players operation #FinalDamage Temp /= #c10 Constant
execute if score #FinalDamage Temp matches 0 run scoreboard players set #FinalDamage Temp 1
scoreboard players set @s IconColor 3

scoreboard players operation #Check Temp = @s Health
scoreboard players operation #Check Temp -= #FinalDamage Temp
execute if score #Check Temp matches ..0 run scoreboard players remove #FinalDamage Temp 1
execute if score #Check Temp matches ..-1 run scoreboard players operation #FinalDamage Temp += #Check Temp
#------------------------------------------#
