#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#----------------GIVE GOLD-----------------#
tellraw @p ["",{"text":"Sent ","color":"gold"},{"score":{"name": "#GiveGold","objective": "Temp"}},{"text":" gold to ","color":"gold"},{"selector":"@s","color":"aqua"},{"text":".","color":"gold"}]
tellraw @s ["",{"text":"MONEY! ","color":"gold"},{"selector":"@p","color":"aqua"},{"text":" gave you "},{"score":{"name": "#GiveGold","objective": "Temp"},"color":"gold","italic":false},{"text":" coins","color":"gold"},{"text":"!"}]
scoreboard players operation @s GoldGot = #GiveGold Temp
scoreboard players operation @p TotalGold -= #GiveGold Temp
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.villager.trade master @s ~ ~ ~ 0.2 1
execute as @a[tag=IsInRPGPVEGame] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.2 2
#------------------------------------------#