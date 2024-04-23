# ====================================== #
#                                        #
#          Created by TheCarotte         #
#   Please don't claim as your own work. #
#          "CMDRED" on Youtube !         #
#                                        #
# ====================================== #
#-----------------SETUP------------------#
summon area_effect_cloud ~ ~ ~ {Tags:["RandomUUID"]}
data modify entity @s HandItems[0].components."minecraft:custom_data".AttributeModifiers set value [{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"mainhand",Amount:0,Operation:2,UUID:[I;1086252941,1009984525,1089099583,1835687070]}]
#----------------------------------------#