scoreboard players set #BonusDmg Dummy 0
scoreboard players operation #DamageDealt Dummy = @s MagicDamage
execute store result score #BonusDmg Dummy run data get entity @s SelectedItem.components."minecraft:custom_data".RPG.Damage
scoreboard players operation #DamageDealt Dummy += #BonusDmg Dummy
scoreboard players set #DamageTypeDealt Dummy 102