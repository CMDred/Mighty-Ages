# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#-----------------CRIT-------------------#
tag @s add HasCrit

execute if score #DamageType Dummy matches 1 run scoreboard players set @s IconColor 5
execute if score #DamageType Dummy matches 2 run scoreboard players set @s IconColor 7

execute as @a[tag=Attacker] unless score @s CritCombo matches 0.. run scoreboard players set @s CritCombo 0
execute as @a[tag=Attacker] if score @s CritCombo matches 5.. run scoreboard players set @s CritCombo 5

scoreboard players operation #Percentage Dummy = #c150 Constant

scoreboard players operation #ComboBonus Dummy = @a[tag=Attacker,limit=1] CritComboDmgBonusPercentage

scoreboard players operation #Percentage Dummy += #ComboBonus Dummy

scoreboard players operation #RawDamage Dummy *= #Percentage Dummy
scoreboard players operation #RawDamage Dummy /= #c100 Constant

# Crit Combo
execute if data storage rpgpve:damage DamageSource.components."minecraft:custom_data".RPG{ItemType:"Sword"} run function rpgpve:stats/calculate/crit_combo
#----------------------------------------#