$execute unless score #CurrentBattleWave Dummy matches $(WaveUnlocked).. run return run function rpgpve:items/buy/error_unlock

$execute if score @s Has$(Type) matches 1.. run return run function rpgpve:items/buy/error_bought

$scoreboard players operation #Cost Dummy = @p[tag=MenuOwner] $(Type)Cost
execute run function rpgpve:game/battle_wave/gold/get_gold
$execute if score #Gold Dummy >= #Cost Dummy run function rpgpve:items/buy/blessing/success {Type: $(Type), Display: "$(Display)", ID: $(ID)}
execute unless score #Gold Dummy >= #Cost Dummy run function rpgpve:items/buy/error_gold