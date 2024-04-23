#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#------------------TICK------------------#
execute as @a[scores={JoinRPGPVELobby=1..}] run function rpgpve:game/join_lobby
execute as @a[scores={HostRPGPVEGame=1..}] run function rpgpve:game/host
execute as @a[scores={StartRPGPVEGame=1..}] run function rpgpve:game/start_game/start
execute as @a[scores={ForceRPGPVEGameStart=1..}] run function rpgpve:game/start_game/success

execute if score #GameHosted Dummy matches 1 unless entity @a[tag=HostingRPGPVE] run function rpgpve:game/start_game/host_left

scoreboard players enable @a JoinRPGPVELobby
scoreboard players enable @a HostRPGPVEGame
scoreboard players enable @a StartRPGPVEGame
scoreboard players enable @a ForceRPGPVEGameStart


execute if score #StartCooldown Dummy matches 1.. run scoreboard players remove #StartCooldown Dummy 1
execute if score #StartCooldown Dummy matches 1 run function rpgpve:game/start_game/cooldown_tellraw
#----------------------------------------#
