#Remove xp points
execute as @s at @s run scoreboard players operation @e[type=player,sort=nearest,limit=1] enchCost = @s enchCost
scoreboard players set @a[scores={enchCost=1..}] xpRemoved 0
execute as @a[scores={xpRemoved=0}] run playsound block.enchantment_table.use block @s ~ ~ ~ 1
execute as @a[scores={xpRemoved=0}] run function enchantments:removexp
scoreboard players reset @a enchCost
scoreboard players reset @a xpRemoved

#Craft the item and consume ingredients
execute as @s at @s store result score @s count run data get block ~ ~ ~ Items[{Slot:21b}].Count
execute as @s at @s run scoreboard players remove @s count 1
execute as @s at @s store result block ~ ~ ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get @s count
execute as @s at @s run data remove block ~ ~ ~ Items[{Slot:11b}].tag.StoredEnchantments[0]
execute as @s at @s if data block ~ ~ ~ {Items:[{Slot:11b,tag:{StoredEnchantments:[]}}]} run item replace block ~ ~ ~ container.11 with minecraft:book
execute as @s at @s run data remove block ~ ~ ~ Items[{Slot:13b}].tag.StoredEnchantments[0]
execute as @s at @s if data block ~ ~ ~ {Items:[{Slot:13b,tag:{StoredEnchantments:[]}}]} run item replace block ~ ~ ~ container.13 with minecraft:book
execute as @s at @s run data remove block ~ ~ ~ Items[{Slot:16b}].tag.Crafted