# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#  "CMDRED" on Youtube ! #
#                                        #
# ====================================== #
#-----------------SETUP------------------#
data remove storage rpgpve:damage DamageSource
data modify storage rpgpve:damage DamageSource set from entity @p[tag=Attacker] SelectedItem

execute if score #UsedProjectile Temp matches 0 store result score #DamageType Temp run data get storage rpgpve:damage DamageSource.tag.RPG.DamageType
execute if score #UsedProjectile Temp matches 1 run scoreboard players operation #DamageType Temp = @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1] DamageTypeArrow
execute unless score #DamageType Temp matches 1..2 run scoreboard players set #DamageType Temp 1

scoreboard players operation #PhysicDamage Temp = @p[tag=Attacker] PhysicDamage
scoreboard players operation #MagicDamage Temp = @p[tag=Attacker] MagicDamage

scoreboard players operation #PhysicDefense Temp = @s PhysicDefense
scoreboard players operation #MagicDefense Temp = @s MagicDefense

execute if score #UsedProjectile Temp matches 0 store result score #WeaponDamage Temp run data get storage rpgpve:damage DamageSource.tag.RPG.Damage
execute if score #UsedProjectile Temp matches 1 run scoreboard players operation #WeaponDamage Temp = @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1] ArrowDamage
execute if score #UsedProjectile Temp matches 1 run scoreboard players operation #WeaponDamage Temp += @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1] PlayerDamageBonus

execute if score #DamageType Temp matches 1 run scoreboard players operation #Damage Temp = #PhysicDamage Temp
execute if score #DamageType Temp matches 2 run scoreboard players operation #Damage Temp = #MagicDamage Temp

execute if score #DamageType Temp matches 1 run scoreboard players operation #Defense Temp = #PhysicDefense Temp
execute if score #DamageType Temp matches 2 run scoreboard players operation #Defense Temp = #MagicDefense Temp
execute if score #DamageType Temp matches 2 run scoreboard players set @s IconColor 6


#tellraw @a ["",{"text":" ------------ DAMAGE INSTANCE ---------- "}]

#tellraw @a ["",{"text":"Raw Damage Dealt = "},{"score":{"name": "#WeaponDamage","objective": "Temp"},"color":"light_purple"},{"text":" + "},{"score":{"name": "#Damage","objective": "Temp"},"color":"light_purple"}]
execute store result score #RawDamage Temp run scoreboard players operation #WeaponDamage Temp += #Damage Temp
#tellraw @a ["",{"text":"Raw Damage Dealt = "},{"score":{"name": "#RawDamage","objective": "Temp"},"color":"light_purple"}]
#--------------ARROW SNIPE---------------#
execute if score #UsedProjectile Temp matches 1 as @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1,tag=PlayerArrow] run function rpgpve:stats/calculate/snipe_damage
#-----------------CRIT-------------------#
execute if score #WasCrit Temp matches 1 run function rpgpve:stats/calculate/crit 
execute unless score #WasCrit Temp matches 1 on attacker if score @s CritCombo matches 1.. run function rpgpve:stats/calculate/crit_expire
#-----RESET IF MELEE WITH WAND/BOW-------#
execute if score #UsedProjectile Temp matches 0 if data storage rpgpve:damage DamageSource.tag.RPG{ItemType:"Bow"} run scoreboard players set #RawDamage Temp 5
execute if data storage rpgpve:damage DamageSource.tag.RPG{ItemType:"Wand"} run scoreboard players set #RawDamage Temp 5
#--------------SCEPTRE MANA--------------#
execute if data storage rpgpve:damage DamageSource.tag.RPG{ItemType:"Sceptre"} as @a[tag=Attacker] at @s if score @s SkillPoint >= @s MaxSkillPoint run function rpgpve:stats/calculate/sceptre_first_strike
execute if data storage rpgpve:damage DamageSource.tag.RPG{ItemType:"Sceptre"} run function rpgpve:stats/calculate/sceptre_mana
#execute if data storage rpgpve:damage DamageSource.tag.RPG{ItemType:"Sceptre"} run tellraw @a ["",{"text":"After Sceptre Effects = "},{"score":{"name": "#RawDamage","objective": "Temp"},"color":"light_purple"}]
#---------------CALCULATE----------------#
function rpgpve:stats/calculate/damage_with_defense
#--------------FINAL DAMAGE--------------#
scoreboard players operation #FinalDamage Temp = #DefensedDamage Temp
scoreboard players operation #FinalDamage Temp += #BonusDamage Temp
execute as @a[tag=DistOrigin] run scoreboard players set @s DifferentActionbar 40
execute as @a[tag=DistOrigin] run scoreboard players operation @s ArrowDamage = #FinalDamage Temp
execute as @a[tag=DistOrigin] run scoreboard players operation @s DamageTypeArrow = #SqrtDistance Temp
execute as @a[tag=DistOrigin] run scoreboard players operation @s Constant = #DistanceUnit Temp
execute as @a[tag=DistOrigin] run scoreboard players operation @s CastID = #DistanceDeci Temp
tag @a remove DistOrigin
#------------WEAPON EFFECTS--------------#
# Poison
execute unless data entity @s active_effects[{id:"minecraft:weakness"}] if entity @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1,tag=PoisonArrow] run tellraw @a[tag=ThisPlayer] ["",{"text":"+ ","color":"dark_green"},{"text":"Poison II (15s)","color":"dark_green","bold":false}]
execute if entity @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1,tag=PoisonArrow] run effect give @s poison 15 1

# Wither
execute unless data entity @s active_effects[{id:"minecraft:slowness"}] if entity @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1,tag=WitherArrow] run tellraw @a[tag=ThisPlayer] ["",{"text":"+ ","color":"black"},{"text":"Wither II (15s)","color":"black","bold":false}]
execute if entity @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1,tag=WitherArrow] run effect give @s wither 15 1

# Weakness
execute unless data entity @s active_effects[{id:"minecraft:weakness"}] if entity @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1,tag=WeaknessArrow] run tellraw @a[tag=ThisPlayer] ["",{"text":"+ ","color":"gray"},{"text":"Weakness II (10s)","color":"gray","bold":false}]
execute if entity @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1,tag=WeaknessArrow] run effect give @s weakness 10 1

# Slowness
execute unless data entity @s active_effects[{id:"minecraft:slowness"}] if entity @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1,tag=SlownessArrow] run tellraw @a[tag=ThisPlayer] ["",{"text":"+ ","color":"#252B47"},{"text":"Slowness II (12s)","color":"#252B47","bold":false}]
execute if entity @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1,tag=SlownessArrow] run effect give @s slowness 12 1

# Ice
execute if entity @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1,tag=IceArrow] run function rpgpve:game/arrows/ice_arrow/hit

# Punch
execute facing entity @e[type=#minecraft:arrows,tag=Attacker,sort=nearest,limit=1,tag=PunchArrow] feet rotated ~180 0 rotated ~ ~-20 run function rpgpve:items/effects/bow_punch 
#----------------------------------------#