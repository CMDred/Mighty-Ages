$execute as @p[tag=MenuOwner] at @s if score #$(Type) Dummy matches 7.. run return run function rpgpve:items/buy/error_bought

$scoreboard players operation #Cost Dummy = #$(Type)$(Tier)Cost Dummy
execute as @p[tag=MenuOwner] run function rpgpve:game/battle_wave/gold/get_gold
$execute if score #Gold Dummy >= #Cost Dummy as @p[tag=MenuOwner] at @s run function rpgpve:items/buy/armors/success {Tier:$(Tier),Type:$(Type),ID:$(ID),Slot:$(Slot)}
execute unless score #Gold Dummy >= #Cost Dummy as @p[tag=MenuOwner] at @s run function rpgpve:items/buy/error_gold