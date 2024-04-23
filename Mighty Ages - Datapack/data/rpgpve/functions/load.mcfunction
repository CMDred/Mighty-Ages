# Message
tellraw @a [{"text":"RPG PVE >","color":"green"},{"text":" Datapack Reloaded.","color":"white"}]

# Forceload
execute in rpgpve:rpgpve_game run forceload add 0 0
execute in rpgpve:rpgpve_game run forceload add 700000 700000
execute in rpgpve:rpgpve_game run setblock 700000 1 700000 yellow_shulker_box

execute in overworld run forceload add 700000 700000
execute in overworld run setblock 700000 1 700000 yellow_shulker_box

scoreboard objectives add GameSettings dummy

# Gamerules
gamerule naturalRegeneration false
gamerule showDeathMessages false
gamerule doFireTick false
gamerule fallDamage false
gamerule doMobSpawning false
gamerule announceAdvancements false
gamerule mobGriefing false
gamerule doWardenSpawning false

# Scores
scoreboard objectives add JoinRPGPVELobby trigger
scoreboard objectives add HostRPGPVEGame trigger
scoreboard objectives add StartRPGPVEGame trigger
scoreboard objectives add ForceRPGPVEGameStart trigger

scoreboard objectives add Dummy dummy
scoreboard objectives add SqrtMath dummy
scoreboard objectives add RightClick minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add LifeTime dummy
scoreboard objectives add PlayerY dummy


scoreboard objectives add Death deathCount
scoreboard objectives add Kill playerKillCount
scoreboard objectives add Fall minecraft.custom:minecraft.fall_one_cm
scoreboard objectives add Fire dummy
scoreboard objectives add ShootBow minecraft.used:minecraft.bow
scoreboard objectives add ShootCrossbow minecraft.used:minecraft.crossbow
scoreboard objectives add Walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add Sprint minecraft.custom:minecraft.sprint_one_cm

scoreboard objectives add DamageTaken custom:damage_resisted
scoreboard objectives add DamageType dummy

scoreboard objectives add UUID0 dummy
scoreboard objectives add UUID1 dummy
scoreboard objectives add UUID2 dummy
scoreboard objectives add UUID3 dummy

scoreboard objectives add PlayerID dummy
scoreboard objectives add JoinGame minecraft.custom:leave_game

scoreboard objectives add BowUsed minecraft.used:minecraft.bow

scoreboard objectives add Constant dummy
scoreboard players set #c-1 Constant -1
scoreboard players set #c2 Constant 2
scoreboard players set #c3 Constant 3
scoreboard players set #c4 Constant 4
scoreboard players set #c5 Constant 5
scoreboard players set #c6 Constant 6
scoreboard players set #c8 Constant 8
scoreboard players set #c10 Constant 10
scoreboard players set #c12 Constant 12
scoreboard players set #c15 Constant 15
scoreboard players set #c16 Constant 16
scoreboard players set #c17 Constant 17
scoreboard players set #c20 Constant 20
scoreboard players set #c21 Constant 21
scoreboard players set #c22 Constant 22
scoreboard players set #c24 Constant 24
scoreboard players set #c25 Constant 25
scoreboard players set #c30 Constant 30
scoreboard players set #c34 Constant 34
scoreboard players set #c35 Constant 35
scoreboard players set #c40 Constant 40
scoreboard players set #c50 Constant 50
scoreboard players set #c51 Constant 51
scoreboard players set #c59 Constant 59
scoreboard players set #c60 Constant 60
scoreboard players set #c67 Constant 67
scoreboard players set #c80 Constant 80
scoreboard players set #c70 Constant 70
scoreboard players set #c90 Constant 90
scoreboard players set #c100 Constant 100
scoreboard players set #c110 Constant 110
scoreboard players set #c114 Constant 114
scoreboard players set #c115 Constant 115
scoreboard players set #c120 Constant 120
scoreboard players set #c125 Constant 125
scoreboard players set #c130 Constant 130
scoreboard players set #c140 Constant 140
scoreboard players set #c150 Constant 150
scoreboard players set #c166 Constant 166
scoreboard players set #c170 Constant 170
scoreboard players set #c316 Constant 316
scoreboard players set #c360 Constant 360
scoreboard players set #c400 Constant 400
scoreboard players set #c500 Constant 500
scoreboard players set #c1000 Constant 1000
scoreboard players set #c1155 Constant 1155
scoreboard players set #c3600 Constant 3600
scoreboard players set #c10000 Constant 10000

scoreboard objectives add Dummy dummy

scoreboard objectives add LogMath dummy

scoreboard objectives add AbsMath dummy

scoreboard objectives add TierHeld dummy


function rpgpve:stats/load
function rpgpve:game/load
function rpgpve:npcs/reset
function rpgpve:menu/reset
function rpgpve:items/load
function rpgpve:game/records/load

# lobby prevent void
schedule clear rpgpve:lobby/prevent_void_main
schedule function rpgpve:lobby/prevent_void_main 0.5s

scoreboard objectives add ToggleMusic trigger

schedule clear rpgpve:game/minecarts/check_dismount
schedule function rpgpve:game/minecarts/check_dismount 0.25s

schedule function rpgpve:main_1s 1s replace
schedule function rpgpve:main_5s 5s replace
schedule function rpgpve:main_20s 20s replace

execute as @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob] at @s run function rpgpve:stats/new_mob