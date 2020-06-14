##reloadloop
##graviton lance
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,graviton:1}}}] if score @s reloadtimer matches ..40 run function guns:graviton/loading
##sunshot
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] if score @s reloadtimer matches ..30 run function guns:sunshot/loading
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] if score @s reloadtimer matches ..30 run function guns:sunshot/loading
