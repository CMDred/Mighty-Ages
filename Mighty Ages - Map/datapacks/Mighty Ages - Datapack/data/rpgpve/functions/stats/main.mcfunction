#==========================================#
#            Created by CMDred             #
# Please don't claim this as your own work #
#            Youtube : CMDRED              #
#==========================================#
#-----------------PLAYER-------------------#
# player main
execute as @a run function rpgpve:stats/player_main

# fall dmg
execute as @a[scores={Fall=1..}] run function rpgpve:stats/fall_damage/test_fall
#-----------CHECK FOR NEW MOB--------------#
execute as @e[type=#rpgpve:has_health_bar,tag=!Registered,tag=!NPC,tag=!DontRegister] at @s run function rpgpve:stats/new_mob
#-----------------ARROWS-------------------#
execute as @e[type=#minecraft:arrows,tag=!Registered,tag=!GotStats] at @s run function rpgpve:stats/arrow/give_stats
#------------------------------------------#
