#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
scoreboard players set @s AnvilCooldown 30
playsound entity.enderman.teleport master @s ~ ~ ~ 0.6 1
particle witch ~ ~15 ~ 1 1 1 0.01 40 force
particle witch ~ ~0.2 ~ 0.5 0 0.5 0.01 40 force
summon minecraft:falling_block ~ ~15 ~ {Tags:["AnvilBlock"],DropItem:0b,BlockState:{Name:"minecraft:anvil"},Motion:[0.0d,-0.9d,0.0d],Passengers:[{id:"minecraft:marker",Tags:["AnvilFallCheck"]}]}
#----------------------------------------#
