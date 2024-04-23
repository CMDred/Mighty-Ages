#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
playsound entity.wither.shoot master @a ~ ~ ~ 2 0.5 0
playsound entity.generic.explode master @a ~ ~ ~ 3 0 0

scoreboard players set #AllReach Dummy 200


scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~-90 -35 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~-90 0 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~-90 35 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~-90 -35 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~ 0 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~ 35 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~ -35 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~180 0 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~180 35 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~180 -35 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~90 0 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast
scoreboard players operation #Reach Dummy = #AllReach Dummy
execute rotated ~90 35 anchored eyes positioned ^ ^ ^ run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_beam/raycast

tag @s remove DoingAnimation
tag @s remove DoingBeam
data modify entity @s NoAI set value 0b
#----------------------------------------#
