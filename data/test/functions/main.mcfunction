#execute as @e run function superhero:fatigue
#execute as @e run function superhero:standstill
#execute as @e[tag=test] run function superhero:test

## arrow no have yucky bubbles
execute as @e[type=arrow,tag=timefreezed] run data merge entity @s {Color:-1}

## sunshot ads
execute as @a[tag=ads] unless score @s ads matches 1.. run function test:sunshot/adsoff
execute as @a[tag=!ads,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] unless score @s ads matches 1.. run function test:sunshot/adsoff
execute as @a[scores={ads=1..},tag=!ads,tag=!reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run function test:sunshot/adson
#execute as @a[tag=ads,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] unless score @s scope matches 1.. run function test:sunshot/adsoff
#execute as @a[scores={scope=1..},tag=!ads,tag=!reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] run function test:sunshot/adson
scoreboard players reset @a ads
scoreboard players reset @a scope


##animations
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run effect give @s mining_fatigue 1 128 true
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run stopsound @a[distance=..10] master item.armor.equip_generic
#execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] run effect give @s haste 1 255 true

##left click detect
#kill @e[tag=leftclick]
#execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1}}}] at @s positioned ^ ^ ^1 run tp @e[tag=leftclick] ^ ^0.2 ^

##shooting
execute as @a[scores={shootgun=1..,magazine=1..},tag=!rpm,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] at @s anchored eyes run function test:sunshot/shoot
execute as @a[scores={shootgun=1..,magazine=1..},tag=!rpm,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] at @s anchored eyes run function test:sunshot/shoot
execute as @a[scores={shootgun=1..},tag=!rpm,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] unless entity @s[scores={magazine=1..}] at @s anchored eyes run function test:sunshot/reload
execute as @a[scores={shootgun=1..},tag=!rpm,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] unless entity @s[scores={magazine=1..}] at @s anchored eyes run function test:sunshot/reload
scoreboard players reset @a shootgun

##reloading
execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,Count:1b,tag:{gun:1,sunshot:1}}]}] unless entity @s[nbt={SelectedItem:{}}] run function test:sunshot/reload
execute as @a[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:-106b,Count:1b,tag:{gun:1,sunshot:2}}]}] unless entity @s[nbt={SelectedItem:{}}] run function test:sunshot/reload
