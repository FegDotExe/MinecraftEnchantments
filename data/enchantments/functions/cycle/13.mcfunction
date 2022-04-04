execute as @s at @s run data modify storage enchantomega cycle set from block ~ ~ ~ Items[{Slot:13b}].tag.StoredEnchantments[0]
execute as @s at @s run data remove block ~ ~ ~ Items[{Slot:13b}].tag.StoredEnchantments[0]
execute as @s at @s run data modify block ~ ~ ~ Items[{Slot:13b}].tag.StoredEnchantments append from storage enchantomega cycle