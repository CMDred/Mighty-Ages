#--------------SETUP STORAGE---------------#
execute on origin run tag @s add Player
data remove storage rpgpve:damage Bow
execute on origin run data modify storage rpgpve:damage Bow set from entity @s SelectedItem
execute on origin unless entity @s[nbt={SelectedItem:{id:"minecraft:bow"}}] unless entity @s[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run data modify storage rpgpve:damage Bow set from entity @s Inventory[{Slot:-106b}]
#---------------BASIC STATS----------------#
execute store result score @s DamageTypeArrow run data get storage rpgpve:damage Bow.tag.RPG.DamageType
execute if score @s DamageTypeArrow matches 0 run scoreboard players set @s DamageTypeArrow 1

execute store result score @s ArrowDamage run data get storage rpgpve:damage Bow.tag.RPG.Damage
execute if score @s ArrowDamage matches 0 run scoreboard players set @s ArrowDamage 25

execute unless score @p[tag=player] ArrowDamage matches 5.. run scoreboard players set @p[tag=Player] ArrowDamage 5
scoreboard players operation @s ArrowDamage += @p[tag=player] ArrowDamage

execute if score @s DamageTypeArrow matches 1 run scoreboard players operation @s PlayerDamageBonus = @p[tag=Player] PhysicDamage
execute if score @s DamageTypeArrow matches 2 run scoreboard players operation @s PlayerDamageBonus = @p[tag=Player] MagicDamage
#--------------------ID--------------------#
scoreboard players operation @s PlayerID = @p[tag=player] PlayerID
#--------------CUSTOM ARROWS---------------#
execute if score @p[tag=Player] HasCustomArrow matches 1.. run scoreboard players operation @s HasCustomArrow = @p[tag=Player] HasCustomArrow
execute if score @s HasCustomArrow matches 1 run tag @s add SlownessArrow
execute if score @s HasCustomArrow matches 2 run tag @s add WitherArrow
execute if score @s HasCustomArrow matches 3 run tag @s add WeaknessArrow
execute if score @s HasCustomArrow matches 4 run tag @s add HealingArrow
execute if score @s HasCustomArrow matches 5 run tag @s add IceArrow
#execute if score @s HasCustomArrow matches ... run tag @s add ...
execute on origin run tag @s remove Player
#---------------BOW EFFECTS----------------#
execute if data storage rpgpve:damage Bow.tag.RPG{Ability:"Poison"} run tag @s add PoisonArrow
execute if data storage rpgpve:damage Bow.tag.RPG{Ability:"Punch"} run tag @s add PunchArrow
execute if data storage rpgpve:damage Bow.tag.RPG{Ability:"Flame"} run data modify entity @s Fire set value 2000s
#------------------SETUP-------------------#
tag @s add PlayerArrow
data merge entity @s {PierceLevel:4b}
execute on origin run scoreboard players reset @s ShootBow
execute on origin run scoreboard players reset @s ShootCrossbow
tag @s add GotStats
#------------------------------------------#