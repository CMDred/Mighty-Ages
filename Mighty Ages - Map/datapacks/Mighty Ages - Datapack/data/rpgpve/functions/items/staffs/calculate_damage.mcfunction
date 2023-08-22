scoreboard players set #BonusDmg Temp 0
scoreboard players operation #DamageDealt Temp = @s MagicDamage
execute store result score #BonusDmg Temp run data get entity @s SelectedItem.tag.RPG.Damage
scoreboard players operation #DamageDealt Temp += #BonusDmg Temp
scoreboard players set #DamageTypeDealt Temp 102