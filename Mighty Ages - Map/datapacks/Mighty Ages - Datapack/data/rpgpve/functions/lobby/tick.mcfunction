#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------------TICK------------------#
execute as @a[scores={JoinRPGPVELobby=1..}] run function rpgpve:game/join_lobby
execute as @a[scores={HostRPGPVEGame=1..}] run function rpgpve:game/host
execute as @a[scores={StartRPGPVEGame=1..}] run function rpgpve:game/start_game/start
execute as @a[scores={ForceRPGPVEGameStart=1..}] run function rpgpve:game/start_game/success

scoreboard players enable @a JoinRPGPVELobby
scoreboard players enable @a HostRPGPVEGame
scoreboard players enable @a StartRPGPVEGame
scoreboard players enable @a ForceRPGPVEGameStart

effect give @a[tag=IsInRPGPVELobby] minecraft:resistance 5 5 true

execute if score #StartCooldown Temp matches 1.. run scoreboard players remove #StartCooldown Temp 1
execute if score #StartCooldown Temp matches 1 run function rpgpve:game/start_game/cooldown_tellraw
#----------------------------------------#
