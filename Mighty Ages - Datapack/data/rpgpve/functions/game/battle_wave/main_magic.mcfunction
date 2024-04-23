#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#

## sorry for this code... too lazy to refactor :p


# Anvils
execute as @a if score @s AnvilCooldown matches 1.. run scoreboard players remove @s AnvilCooldown 1
execute as @a[tag=IsInRPGPVEGame] at @s if block ~ ~-1 ~ budding_amethyst unless score @s AnvilCooldown matches 1.. run function rpgpve:game/battle_wave/anvil/spawn
execute as @e[type=marker,tag=AnvilFallCheck] at @s unless entity @e[type=falling_block,distance=..1] run function rpgpve:game/battle_wave/anvil/landed
execute as @e[type=falling_block,tag=AnvilBlock] at @s unless block ~ ~-1 ~ #rpgpve:allowed run kill @s
execute as @e[type=falling_block,tag=AnvilBlock] at @s if block ~ ~-1 ~ #rpgpve:allowed unless block ~ ~-2 ~ #rpgpve:allowed run kill @s

# mage
execute at @e[type=zombie,tag=MageProjectile] run particle smoke ^ ^1.7 ^-2 0.2 0.2 0.2 0.1 15 normal
execute at @e[type=zombie,tag=MageProjectile] run particle flame ^ ^1.7 ^-2 0.1 0.1 0.1 0.01 5 normal
execute as @e[type=zombie,tag=MageProjectile] at @s run tp @s ^ ^ ^1.4
execute as @e[type=zombie,tag=MageProjectile] at @s unless block ~ ~1 ~ #rpgpve:allowed run function rpgpve:game/battle_wave/monsters/spells/mage/explode
execute as @e[type=zombie,tag=MageProjectile] at @s if entity @a[tag=IsInRPGPVEGame,gamemode=adventure,dx=1] run function rpgpve:game/battle_wave/monsters/spells/mage/explode
# void creeper
execute as @e[type=armor_stand,tag=VoidCreeperDamageDetect] at @s unless entity @e[type=creeper,tag=VoidCreeper,distance=..2.5] run function rpgpve:game/battle_wave/monsters/spells/void_creeper/exploded
execute as @e[type=creeper,tag=VoidCreeper] at @s run function rpgpve:game/battle_wave/monsters/spells/void_creeper/check
kill @e[type=area_effect_cloud,nbt={Particle:"minecraft:entity_effect"}]
# geomancer
execute as @e[type=marker,tag=GeomancerSpikePos,tag=!Summoning] run scoreboard players add @s Attack1Timer 1
execute as @e[type=marker,tag=GeomancerSpikePos,tag=!Summoning,scores={Attack1Timer=3}] at @s run function rpgpve:game/battle_wave/monsters/spells/geomancer/spawn
execute as @e[type=marker,tag=GeomancerSpikePos,tag=Summoning,tag=!Stop] at @s run particle block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 0.7 0 0.7 0.1 10 force

execute as @e[type=armor_stand,tag=StoneSpike,tag=!Stop] run scoreboard players add @s Attack1Timer 1
execute as @e[type=armor_stand,tag=StoneSpike,scores={Attack1Timer=0..},tag=!Stop] at @s run tp @s ~ ~0.8 ~
execute as @e[type=armor_stand,tag=StoneSpike,scores={Attack1Timer=2..},tag=!Stop] at @s run function rpgpve:game/battle_wave/monsters/spells/geomancer/damage

execute as @e[type=marker,tag=GeomancerSpikePos,tag=Stop] run scoreboard players add @s Attack2Timer 1
execute as @e[type=marker,tag=GeomancerSpikePos,tag=Stop,scores={Attack2Timer=60..}] at @s run particle block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 0.7 0 0.7 0.1 10 force
execute as @e[type=marker,tag=GeomancerSpikePos,tag=Stop,scores={Attack2Timer=60..}] at @s as @e[type=armor_stand,tag=StoneSpike,sort=nearest,limit=1] at @s run tp @s ~ ~-0.2 ~
execute as @e[type=marker,tag=GeomancerSpikePos,tag=Stop,scores={Attack2Timer=80..}] at @s run kill @e[type=armor_stand,tag=StoneSpike,sort=nearest,limit=1]
execute as @e[type=marker,tag=GeomancerSpikePos,tag=Stop,scores={Attack2Timer=80..}] at @s run kill @s
#sculk slime
execute as @e[type=armor_stand,tag=SculkSlimeTexture] at @s unless entity @e[type=slime,tag=SculkSlime,distance=..3] run function rpgpve:game/battle_wave/monsters/spells/sculk_slime/fake_kill
# evoker
execute as @e[type=skeleton,tag=Evoker] run scoreboard players add @s Attack1Timer 1
execute as @e[type=skeleton,tag=Evoker] at @s if score @s Attack1Timer >= @s Attack1Delay run function rpgpve:game/battle_wave/monsters/spells/evoker/spawn_vexes
#----------------------------------------#
