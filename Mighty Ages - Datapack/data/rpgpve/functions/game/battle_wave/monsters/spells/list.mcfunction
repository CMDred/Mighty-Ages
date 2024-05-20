#========================================#
#           Made by TheCarotte           #
#        Don't claim as own work         #
#========================================#
#--------------BATTLE WAVE---------------#
tag @e[type=arrow,sort=nearest,limit=1] add ThisArrow
execute if entity @s[tag=MysticalRanger] run function rpgpve:game/battle_wave/monsters/spells/mystical_ranger/start
execute if entity @s[tag=FireMage] run function rpgpve:game/battle_wave/monsters/spells/mage/start
execute if entity @s[tag=Geomancer] run function rpgpve:game/battle_wave/monsters/spells/geomancer/start
execute if entity @s[tag=Evoker] run function rpgpve:game/battle_wave/monsters/spells/evoker/start
execute if entity @s[tag=Endermancer] run function rpgpve:game/battle_wave/monsters/spells/endermancer/start

kill @e[type=arrow,tag=ThisArrow]
#----------------------------------------#
