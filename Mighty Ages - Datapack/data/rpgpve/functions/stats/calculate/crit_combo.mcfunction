# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#-----------------CRIT-------------------#
scoreboard players add @a[tag=Attacker] CritCombo 1
scoreboard players add @a[tag=Attacker,scores={CritCombo=1..5}] CritComboDmgBonusPercentage 5
scoreboard players add @a[tag=Attacker,scores={CritCombo=6..}] CritComboDmgBonusPercentage 2
scoreboard players set @a[tag=Attacker] CritComboExpireTimer 60

execute as @a[tag=Attacker] at @s if score @s CritCombo matches 2 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.4 0.2
execute as @a[tag=Attacker] at @s if score @s CritCombo matches 3 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.4 0.4
execute as @a[tag=Attacker] at @s if score @s CritCombo matches 4 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.4 0.6
execute as @a[tag=Attacker] at @s if score @s CritCombo matches 5 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.4 0.8
execute as @a[tag=Attacker] at @s if score @s CritCombo matches 6 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.4 1
execute as @a[tag=Attacker] at @s if score @s CritCombo matches 7 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.4 1.2
execute as @a[tag=Attacker] at @s if score @s CritCombo matches 8 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.4 1.4
execute as @a[tag=Attacker] at @s if score @s CritCombo matches 9 run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.4 1.6
execute as @a[tag=Attacker] at @s if score @s CritCombo matches 10.. run playsound entity.experience_orb.pickup master @s ~ ~ ~ 0.4 1.8
#----------------------------------------#