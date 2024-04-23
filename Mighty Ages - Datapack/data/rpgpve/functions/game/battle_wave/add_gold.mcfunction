#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players set @s DifferentActionbar 40
playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.3 2 1

execute unless score SharedPurse GameSettings matches 1 run scoreboard players operation @s TotalGold += @s GoldGot
execute unless score SharedPurse GameSettings matches 2 run scoreboard players operation #SharedPurse Dummy += @s GoldGot

scoreboard players operation @s AddedGold = @s GoldGot
scoreboard players set @s GoldGot 0
function rpgpve:game/sidebar/update_gold
#----------------------------------------#
