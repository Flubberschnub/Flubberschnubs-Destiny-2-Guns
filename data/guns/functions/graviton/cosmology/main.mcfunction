##main tick function for cosmology
tag @a remove cosmoimmune
tag @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{graviton:1}}}] add cosmoimmune
execute as @e[type=area_effect_cloud,tag=cosmology] at @s run function guns:graviton/cosmology/track
execute unless entity @e[tag=cosmology] run scoreboard players reset @e cosmotarget
