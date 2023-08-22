# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#  "CMDRED" on Youtube ! #
#                                        #
# ====================================== #
#--------------SCEPTRE MANA--------------#
execute store result score #ManaCost Temp run data get storage rpgpve:damage DamageSource.tag.RPG.ManaCost
execute as @a[tag=Attacker] unless score @s SkillPoint >= #ManaCost Temp run function rpgpve:items/staffs/error
execute as @a[tag=Attacker] unless score @s SkillPoint >= #ManaCost Temp run scoreboard players set #RawDamage Temp 5
execute as @a[tag=Attacker] if score @s SkillPoint >= #ManaCost Temp run function rpgpve:stats/calculate/sceptre_mana_success
#----------------------------------------#