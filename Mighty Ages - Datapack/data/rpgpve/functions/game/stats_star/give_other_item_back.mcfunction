#========================================#
#         Made by TheCarotte          #
#       Don't claim as own work          #
#========================================#
#---------------GAME MAIN----------------#
data modify storage rpgpve:inventory GiveBack set from entity @s Inventory[{Slot:35b}]
data remove storage rpgpve:inventory GiveBack.Slot
summon item ~ ~ ~ {Tags:["GiveBack"],PickupDelay:2,Item:{id:"minecraft:stone",Count:1b}}
data modify entity @e[type=item,tag=GiveBack,sort=nearest,limit=1] Item set from storage rpgpve:inventory GiveBack
#----------------------------------------#
