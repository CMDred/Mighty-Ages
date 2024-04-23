#========================================#
#           Made by TheCarotte           #
#       Don't claim as own work          #
#========================================#
#-----------------BOSSES-----------------#
execute on passengers run kill @s
particle block{block_state:{Name:"minecraft:stone"}} ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
playsound block.stone.break block @a[distance=..20] ~ ~ ~ 1 1 0
kill @s
#----------------------------------------#
