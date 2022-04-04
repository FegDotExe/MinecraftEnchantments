execute as @s run xp add @s -1 levels
execute as @s run scoreboard players add @s xpRemoved 1
execute as @s if score @s xpRemoved < @s enchCost run function enchantments:removexp