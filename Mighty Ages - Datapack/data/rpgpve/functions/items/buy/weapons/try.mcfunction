$execute as @p[tag=MenuOwner] at @s if score @s $(Type)Purchased matches $(Tier).. run return run function rpgpve:items/buy/error_bought

$scoreboard players set #Tier Dummy $(Tier)
$execute store result score #TierDifference Dummy run scoreboard players operation #Tier Dummy -= @p[tag=MenuOwner] $(Type)Purchased

execute if score #TierDifference Dummy matches 2.. as @p[tag=MenuOwner] at @s run return run function rpgpve:items/buy/error_unlock

$scoreboard players operation #Cost Dummy = #$(Type)$(Tier)Cost Dummy
execute as @p[tag=MenuOwner] run function rpgpve:game/battle_wave/gold/get_gold
$execute if score #Gold Dummy >= #Cost Dummy as @p[tag=MenuOwner] at @s run function rpgpve:items/buy/weapons/success {Tier:$(Tier),Type:$(Type),Item:$(Item)}
execute unless score #Gold Dummy >= #Cost Dummy as @p[tag=MenuOwner] at @s run function rpgpve:items/buy/error_gold