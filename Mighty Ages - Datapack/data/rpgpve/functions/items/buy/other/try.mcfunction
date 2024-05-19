$execute unless score #CurrentBattleWave Dummy matches $(WaveUnlocked).. as @p[tag=MenuOwner] run return run function rpgpve:items/buy/error_unlock

$scoreboard players operation #Cost Dummy = @p[tag=MenuOwner] $(Type)Cost
execute as @p[tag=MenuOwner] run function rpgpve:game/battle_wave/gold/get_gold
$execute if score #Gold Dummy >= #Cost Dummy as @p[tag=MenuOwner] run function rpgpve:items/buy/other/success {Type: $(Type), Display: "$(Display)", ID: $(ID), ParentFolder:$(ParentFolder)}
execute unless score #Gold Dummy >= #Cost Dummy as @p[tag=MenuOwner] run function rpgpve:items/buy/error_gold