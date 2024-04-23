#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute if entity @s[tag=Void] if entity @e[type=phantom,tag=VoidShield] as @a[tag=IsInRPGPVEGame] at @s run playsound entity.phantom.hurt master @s ~ ~ ~ 0.6 0
execute if entity @s[tag=Dark] if entity @e[type=phantom,tag=DarkShield] as @a[tag=IsInRPGPVEGame] at @s run playsound entity.phantom.hurt master @s ~ ~ ~ 0.6 0
execute if entity @s[tag=Void] run particle witch ~ ~ ~ 0.5 0.5 0.5 0.01 30 force
execute if entity @s[tag=Dark] run particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0.01 30 force
kill @s
#----------------------------------------#
