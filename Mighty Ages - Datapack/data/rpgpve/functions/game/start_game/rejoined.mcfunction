#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------START GAME---------------#
tag @s add This
execute if score #GameHosted Dummy matches 1 if entity @a[tag=HostingRPGPVE,tag=!This] run tag @s remove HostingRPGPVE
tag @s remove This
#----------------------------------------#
