##recoiloop
##graviton lance
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,graviton:1}}}] if score @s recoiltimer matches ..11 run function guns:graviton/decoil
##sunshot
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:1}}}] if score @s recoiltimer matches ..11 run function guns:sunshot/decoil
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,sunshot:2}}}] if score @s recoiltimer matches ..11 run function guns:sunshot/decoil
##recluse
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1}}}] if score @s recoiltimer matches ..3 run function guns:recluse/decoil
