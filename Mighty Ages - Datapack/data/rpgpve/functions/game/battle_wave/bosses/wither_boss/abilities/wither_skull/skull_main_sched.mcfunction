#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
scoreboard players set #SkullExists Dummy 0
execute as @e[type=item_display,tag=WitherBossSkull,limit=1] at @s run function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/skull_main
execute unless score #SkullExists Dummy matches 0 run schedule function rpgpve:game/battle_wave/bosses/wither_boss/abilities/wither_skull/skull_main_sched 1t
#----------------------------------------#
