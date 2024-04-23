#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
bossbar set rpgpve:troll_bro_x players @a[tag=IsInRPGPVEGame]
bossbar set rpgpve:troll_bro_x visible true
bossbar set rpgpve:troll_bro_x color purple

execute store result bossbar rpgpve:troll_bro_x max run scoreboard players get @e[type=zombie,tag=TrollBroX,limit=1] MaxHealth 
execute store result bossbar rpgpve:troll_bro_x value run scoreboard players get @e[type=zombie,tag=TrollBroX,limit=1] MaxHealth

bossbar set rpgpve:troll_bro_z players @a[tag=IsInRPGPVEGame]
bossbar set rpgpve:troll_bro_z visible true
bossbar set rpgpve:troll_bro_z color green

execute store result bossbar rpgpve:troll_bro_z max run scoreboard players get @e[type=zombie,tag=TrollBroZ,limit=1] MaxHealth 
execute store result bossbar rpgpve:troll_bro_z value run scoreboard players get @e[type=zombie,tag=TrollBroZ,limit=1] MaxHealth
#----------------------------------------#
