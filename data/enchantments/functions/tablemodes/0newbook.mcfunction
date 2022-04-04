#Test if the books have the same enchantment as the first one
execute as @s at @s run data remove block ~ ~ ~ Items[{Slot:8b}].tag.StoredEnchantments
execute as @s at @s run data modify block ~ ~ ~ Items[{Slot:8b}].tag.StoredEnchantments append from block ~ ~ ~ Items[{Slot:11b}].tag.StoredEnchantments[0]
execute as @s at @s store success score @s sameEnchantment run data modify block ~ ~ ~ Items[{Slot:8b}].tag.StoredEnchantments[0] set from block ~ ~ ~ Items[{Slot:13b}].tag.StoredEnchantments[0]

#Place the book
execute as @s[scores={sameEnchantment=0}] at @s run item replace block ~ ~ ~ container.16 with minecraft:enchanted_book{Crafted:1b}
execute as @s[scores={sameEnchantment=0}] at @s run data modify block ~ ~ ~ Items[{Slot:16b}].tag.StoredEnchantments append from block ~ ~ ~ Items[{Slot:11b}].tag.StoredEnchantments[0]
execute as @s[scores={sameEnchantment=0}] at @s store result score @s enchantLevel run data get block ~ ~ ~ Items[{Slot:16b}].tag.StoredEnchantments[0].lvl
execute as @s[scores={sameEnchantment=0}] at @s run scoreboard players add @s enchantLevel 1
execute as @s[scores={sameEnchantment=0}] at @s run scoreboard players operation @s enchCost = @s enchantLevel
execute as @s[scores={sameEnchantment=0}] at @s run scoreboard players operation @s enchCost *= @s enchCost
execute as @s[scores={sameEnchantment=0}] at @s store result block ~ ~ ~ Items[{Slot:16b}].tag.StoredEnchantments[0].lvl int 1 run scoreboard players get @s enchantLevel