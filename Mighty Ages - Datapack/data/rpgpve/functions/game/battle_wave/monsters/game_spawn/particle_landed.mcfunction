#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
execute if entity @s[tag=ZombieParticle] run function rpgpve:game/battle_wave/monsters/summon/plains/zombie
execute if entity @s[tag=SkeletonParticle] run function rpgpve:game/battle_wave/monsters/summon/plains/skeleton
execute if entity @s[tag=SpiderParticle] run function rpgpve:game/battle_wave/monsters/summon/plains/spider
execute if entity @s[tag=CreeperParticle] run function rpgpve:game/battle_wave/monsters/summon/plains/creeper
execute if entity @s[tag=ZombieVillagerParticle] run function rpgpve:game/battle_wave/monsters/summon/plains/zombie_villager
execute if entity @s[tag=GoldenOrderMinionParticle] run function rpgpve:game/battle_wave/monsters/summon/plains/golden_order_minion
execute if entity @s[tag=AngryGolemParticle] run function rpgpve:game/battle_wave/monsters/summon/plains/angry_golem

execute if entity @s[tag=BlazeParticle] run function rpgpve:game/battle_wave/monsters/summon/nether/blaze
execute if entity @s[tag=PiglinParticle] run function rpgpve:game/battle_wave/monsters/summon/nether/piglin
execute if entity @s[tag=PigmanParticle] run function rpgpve:game/battle_wave/monsters/summon/nether/pigman
execute if entity @s[tag=DemonSpiderParticle] run function rpgpve:game/battle_wave/monsters/summon/nether/demon_spider
execute if entity @s[tag=LavaBullParticle] run function rpgpve:game/battle_wave/monsters/summon/nether/lava_bull
execute if entity @s[tag=HoglinParticle] run function rpgpve:game/battle_wave/monsters/summon/nether/hoglin
execute if entity @s[tag=GhastParticle] run function rpgpve:game/battle_wave/monsters/summon/nether/ghast
execute if entity @s[tag=PiglinBruteParticle] run function rpgpve:game/battle_wave/monsters/summon/nether/piglin_brute
execute if entity @s[tag=WitherSkeletonParticle] run function rpgpve:game/battle_wave/monsters/summon/nether/wither_skeleton

execute if entity @s[tag=SculkFollowerParticle] run function rpgpve:game/battle_wave/monsters/summon/magic/sculk_follower
execute if entity @s[tag=MysticalRangerParticle] run function rpgpve:game/battle_wave/monsters/summon/magic/mystical_ranger
execute if entity @s[tag=FireMageParticle] run function rpgpve:game/battle_wave/monsters/summon/magic/fire_mage
execute if entity @s[tag=VoidCreeperParticle] run function rpgpve:game/battle_wave/monsters/summon/magic/void_creeper
execute if entity @s[tag=SculkSlimeParticle] run function rpgpve:game/battle_wave/monsters/summon/magic/sculk_slime
execute if entity @s[tag=GeomancerParticle] run function rpgpve:game/battle_wave/monsters/summon/magic/geomancer
execute if entity @s[tag=EvokerParticle] run function rpgpve:game/battle_wave/monsters/summon/magic/evoker
execute if entity @s[tag=VindicatorParticle] run function rpgpve:game/battle_wave/monsters/summon/magic/vindicator
execute if entity @s[tag=WardenParticle] run function rpgpve:game/battle_wave/monsters/summon/magic/warden

execute if entity @s[tag=MinerGoblinParticle] run function rpgpve:game/battle_wave/monsters/summon/cave/goblin
execute if entity @s[tag=TarentulaParticle] run function rpgpve:game/battle_wave/monsters/summon/cave/tarentula
execute if entity @s[tag=ParasiteParticle] run function rpgpve:game/battle_wave/monsters/summon/cave/parasite
execute if entity @s[tag=AngrierGolemParticle] run function rpgpve:game/battle_wave/monsters/summon/cave/angrier_golem
execute if entity @s[tag=CaveStrayerParticle] run function rpgpve:game/battle_wave/monsters/summon/cave/cave_strayer
execute if entity @s[tag=WolfParticle] run function rpgpve:game/battle_wave/monsters/summon/cave/wolf
execute if entity @s[tag=HuskMinerParticle] run function rpgpve:game/battle_wave/monsters/summon/cave/husk_miner
execute if entity @s[tag=CavernBonesParticle] run function rpgpve:game/battle_wave/monsters/summon/cave/cavern_bones
execute if entity @s[tag=ZombieHorsemanParticle] run function rpgpve:game/battle_wave/monsters/summon/cave/zombie_horseman

execute if entity @s[tag=EnderWispParticle] run function rpgpve:game/battle_wave/monsters/summon/end/ender_wisp
execute if entity @s[tag=EnderlingParticle] run function rpgpve:game/battle_wave/monsters/summon/end/enderling
execute if entity @s[tag=VoidSentryParticle] run function rpgpve:game/battle_wave/monsters/summon/end/void_sentry
execute if entity @s[tag=EndermancerParticle] run function rpgpve:game/battle_wave/monsters/summon/end/endermancer
execute if entity @s[tag=EnderboundRevenantParticle] run function rpgpve:game/battle_wave/monsters/summon/end/enderbound_revenant
execute if entity @s[tag=NullShimmererParticle] run function rpgpve:game/battle_wave/monsters/summon/end/null_shimmerer
execute if entity @s[tag=DimensionalStalkerParticle] run function rpgpve:game/battle_wave/monsters/summon/end/dimensional_stalker
execute if entity @s[tag=VoidborneTitanParticle] run function rpgpve:game/battle_wave/monsters/summon/end/voidborne_titan

particle soul ~ ~1 ~ 1 1 1 0.01 60 force

team join rpg_mob @e[type=#rpgpve:has_health_bar,tag=RPGPVEMob]

kill @s
#----------------------------------------#
