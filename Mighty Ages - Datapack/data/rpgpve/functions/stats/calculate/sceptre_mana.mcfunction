# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#--------------SCEPTRE MANA--------------#
execute store result score #ManaCost Dummy run data get storage rpgpve:damage DamageSource.components."minecraft:custom_data".RPG.ManaCost
execute as @a[tag=Attacker] unless score @s SkillPoint >= #ManaCost Dummy run function rpgpve:items/staffs/error
execute as @a[tag=Attacker] unless score @s SkillPoint >= #ManaCost Dummy run scoreboard players set #RawDamage Dummy 5
execute as @a[tag=Attacker] if score @s SkillPoint >= #ManaCost Dummy run function rpgpve:stats/calculate/sceptre_mana_success
#----------------------------------------#