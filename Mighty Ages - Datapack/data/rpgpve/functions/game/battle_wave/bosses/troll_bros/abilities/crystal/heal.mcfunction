#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
particle heart ~ ~2 ~ 1.5 2 1.5 0.01 150 normal

playsound block.beacon.activate master @a ~ ~ ~ 3 2 0

scoreboard players reset @s Constant

scoreboard players set #Reach Dummy 300
execute at @e[type=marker,tag=RegenCrystalTip,distance=..9,limit=1] anchored eyes positioned ^ ^ ^ facing entity @e[type=zombie,tag=TrollBroX] eyes run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/raycast_heal

scoreboard players set #Reach Dummy 300
execute at @e[type=marker,tag=RegenCrystalTip,distance=..9,limit=1] anchored eyes positioned ^ ^ ^ facing entity @e[type=zombie,tag=TrollBroZ] eyes run function rpgpve:game/battle_wave/bosses/troll_bros/abilities/crystal/raycast_heal

execute as @e[type=zombie,tag=Boss] run scoreboard players operation @s Health += @s BonusPhysicDamage
execute as @e[type=zombie,tag=Boss] if score @s Health >= @s MaxHealth run scoreboard players operation @s Health = @s MaxHealth
execute store result bossbar rpgpve:troll_bro_x value run scoreboard players get @e[type=zombie,tag=TrollBroZ,limit=1] Health
execute store result bossbar rpgpve:troll_bro_x value run scoreboard players get @e[type=zombie,tag=TrollBroX,limit=1] Health

execute store result score @s AbsMath run random value 25..40
#----------------------------------------#
