data remove storage rpgpve:roman RomanNumeral
execute unless score #RomanNumIn Dummy matches -2147483648..2147483647 run tellraw @a ["",{"text":"Roman Numeral Converter","color":"red"},{"text":" > Input not set!"}]

execute if score #RomanNumIn Dummy matches 1 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"I","italic":false}'
execute if score #RomanNumIn Dummy matches 2 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"II","italic":false}'
execute if score #RomanNumIn Dummy matches 3 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"III","italic":false}'
execute if score #RomanNumIn Dummy matches 4 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"IV","italic":false}'
execute if score #RomanNumIn Dummy matches 5 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"V","italic":false}'
execute if score #RomanNumIn Dummy matches 6 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"VI","italic":false}'
execute if score #RomanNumIn Dummy matches 7 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"VII","italic":false}'
execute if score #RomanNumIn Dummy matches 8 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"VIII","italic":false}'
execute if score #RomanNumIn Dummy matches 9 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"IX","italic":false}'
execute if score #RomanNumIn Dummy matches 10 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"X","italic":false}'
execute if score #RomanNumIn Dummy matches 11 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"XI","italic":false}'
execute if score #RomanNumIn Dummy matches 12 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"XII","italic":false}'
execute if score #RomanNumIn Dummy matches 13 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"XIII","italic":false}'
execute if score #RomanNumIn Dummy matches 14 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"XIV","italic":false}'
execute if score #RomanNumIn Dummy matches 15 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"XV","italic":false}'
execute if score #RomanNumIn Dummy matches 16 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"XVI","italic":false}'
execute if score #RomanNumIn Dummy matches 17 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"XVII","italic":false}'
execute if score #RomanNumIn Dummy matches 18 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"XVIII","italic":false}'
execute if score #RomanNumIn Dummy matches 19 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"XIX","italic":false}'
execute if score #RomanNumIn Dummy matches 20 run data modify storage rpgpve:roman RomanNumeral set value '{"text":"XX","italic":false}'
