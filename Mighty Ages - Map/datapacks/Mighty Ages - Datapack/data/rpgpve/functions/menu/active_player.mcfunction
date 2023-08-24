#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#---------------STOP HOPPERS---------------#
execute at @s if block ~ ~ ~ hopper run data merge block ~ ~ ~ {TransferCooldown:5}
execute at @s if block ~ ~-1 ~ hopper run data merge block ~ ~-1 ~ {TransferCooldown:5}
#--------------MOVE MINECART---------------#
scoreboard players operation #Search PlayerID = @s PlayerID
execute if entity @s[tag=!MoveUpdate] at @s as @e[type=armor_stand,tag=MenuMove] if score @s PlayerID = #Search PlayerID positioned ^ ^ ^.6 run tp @s ~ ~0.5 ~
execute if entity @s[tag=MoveUpdate] at @s rotated ~ 0 as @e[type=armor_stand,tag=MenuMove] if score @s PlayerID = #Search PlayerID run function rpgpve:menu/menu_distance
#------------------------------------------#