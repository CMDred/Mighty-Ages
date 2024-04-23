#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
execute if entity @s[tag=ZombieParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/zombie
execute if entity @s[tag=ZombieVillagerParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/zombie
execute if entity @s[tag=SkeletonParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/skeleton
execute if entity @s[tag=GoldenOrderMinionParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/skeleton
execute if entity @s[tag=SpiderParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/spider
execute if entity @s[tag=CreeperParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/creeper
execute if entity @s[tag=AngryGolemParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/mini_boss

execute if entity @s[tag=PiglinParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/piglin
execute if entity @s[tag=BlazeParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/blaze
execute if entity @s[tag=PigmanParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/pigman
execute if entity @s[tag=DemonSpiderParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/spider
execute if entity @s[tag=LavaBullParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/mini_boss
execute if entity @s[tag=HoglinParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/piglin
execute if entity @s[tag=GhastParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/ghast
execute if entity @s[tag=PiglinBruteParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/piglin
execute if entity @s[tag=WitherSkeletonParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/wither_skeleton

execute if entity @s[tag=SculkFollowerParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/sculk
execute if entity @s[tag=MysticalRangerParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/skeleton
execute if entity @s[tag=FireMageParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/skeleton
execute if entity @s[tag=VoidCreeperParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/creeper
execute if entity @s[tag=SculkSlimeParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/sculk
execute if entity @s[tag=GeomancerParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/skeleton
execute if entity @s[tag=EvokerParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/skeleton
execute if entity @s[tag=VindicatorParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/skeleton
execute if entity @s[tag=WardenParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/mini_boss

execute if entity @s[tag=MinerGoblinParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/creeper
execute if entity @s[tag=TarentulaParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/spider
execute if entity @s[tag=ParasiteParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/skeleton
execute if entity @s[tag=AngrierGolemParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/mini_boss
execute if entity @s[tag=CaveStrayerParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/mini_boss
execute if entity @s[tag=WolfParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/wolf
execute if entity @s[tag=HuskMinerParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/husk
execute if entity @s[tag=CavernBonesParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/skeleton
execute if entity @s[tag=ZombieHorsemanParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/zombie

execute if entity @s[tag=EnderWispParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/enderman
execute if entity @s[tag=EnderlingParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/enderman
execute if entity @s[tag=VoidSentryParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/enderman
execute if entity @s[tag=EndermancerParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/enderman
execute if entity @s[tag=EnderboundRevenantParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/mini_boss
execute if entity @s[tag=NullShimmererParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/enderman
execute if entity @s[tag=DimensionalStalkerParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/enderman
execute if entity @s[tag=VoidborneTitanParticle] run function rpgpve:game/battle_wave/monsters/game_spawn/visuals/enderman


execute store result score #PosY Dummy run data get entity @s Pos[1] 100
# NOTE : particle speed is scaled * 100 (e.g a speed of 0.5 blocks per tick would be ParticleSpeed of 0.5*100 = 50)
scoreboard players operation #PosY Dummy -= @s ParticleSpeed
execute store result entity @s Pos[1] double 0.01 run scoreboard players get #PosY Dummy

execute unless block ~ ~ ~ #rpgpve:particle_pass_through positioned ~ ~1 ~ run function rpgpve:game/battle_wave/monsters/game_spawn/particle_landed
#----------------------------------------#
