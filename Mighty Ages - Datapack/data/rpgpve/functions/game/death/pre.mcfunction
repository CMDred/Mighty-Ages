execute store result score @s Fire run data get entity @s Fire
execute unless score @s HasTotemOfUndying matches 1.. run function rpgpve:game/death/died
execute if score @s HasTotemOfUndying matches 1.. run function rpgpve:game/death/totem_revive