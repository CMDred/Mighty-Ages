#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#----------ENVIRONMENTAL DAMAGE------------#
scoreboard players operation #FinalDamage Dummy = @s MaxHealth
scoreboard players operation #FinalDamage Dummy /= #c10 Constant
execute if score #FinalDamage Dummy matches 0 run scoreboard players set #FinalDamage Dummy 1
scoreboard players set @s IconColor 3

scoreboard players operation #Check Dummy = @s Health
scoreboard players operation #Check Dummy -= #FinalDamage Dummy
execute if score #Check Dummy matches ..0 run scoreboard players remove #FinalDamage Dummy 1
execute if score #Check Dummy matches ..-1 run scoreboard players operation #FinalDamage Dummy += #Check Dummy
#------------------------------------------#
