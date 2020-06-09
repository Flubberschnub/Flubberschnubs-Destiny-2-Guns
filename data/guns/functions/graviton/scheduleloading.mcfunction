##scheduleloading
execute as @a[tag=reloading,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,graviton:1}}}] run function guns:graviton/loading
execute as @a[tag=reloading] unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,graviton:1}}}] run tag @s remove reloading
