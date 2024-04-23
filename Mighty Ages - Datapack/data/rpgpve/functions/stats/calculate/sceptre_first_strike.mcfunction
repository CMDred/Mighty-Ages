# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#-----------------CRIT-------------------#
scoreboard players operation #RawDamage Dummy *= #c150 Constant
scoreboard players operation #RawDamage Dummy /= #c100 Constant
playsound entity.player.attack.crit master @s ~ ~ ~ 0.6 1
playsound entity.player.attack.knockback master @s ~ ~ ~ 0.6 1
playsound entity.warden.attack_impact master @s ~ ~ ~ 2 0
#----------------------------------------#