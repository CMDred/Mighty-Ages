execute store result score @s Fire run data get entity @s Fire
execute unless score @s TotemOfUndying matches 1.. run function rpgpve:game/death/died
execute if score @s TotemOfUndying matches 1.. run function rpgpve:game/death/totem_revive