summon armor_stand ~ ~ ~ {CustomName:'{"text":"enchantomega"}',Marker:1b,Invisible:1b,NoGravity:1b,Invulnerable:1b}
setblock ~ ~ ~ barrel{CustomName:'{"text":"Omega table"}'} destroy
scoreboard players set @e[type=armor_stand,name="enchantomega"] tableMode 0