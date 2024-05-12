$tellraw @s [{"text":"You bought ","color":"green"},{"text":"$(Display)","color":"blue"},{"text":"!"}]
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ .5 2
$scoreboard players set @s Has$(Type) 1
function rpgpve:game/battle_wave/gold/remove_gold
$function rpgpve:items/buy/increase_prices/$(ID)
