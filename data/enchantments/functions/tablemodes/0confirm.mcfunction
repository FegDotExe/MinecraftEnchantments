#Function called when a player confirms an enchantment fusion
execute as @s at @s store result score @s playerLevels run xp query @e[type=player,sort=nearest,limit=1] levels
execute as @s at @s if score @s enchCost <= @s playerLevels run function enchantments:tablemodes/0finalize
