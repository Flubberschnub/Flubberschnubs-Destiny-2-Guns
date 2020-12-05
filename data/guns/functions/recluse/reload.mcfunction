##reload gun
scoreboard players reset @s[scores={magazine=1..},tag=!reloading] reloadtimer
replaceitem entity @s weapon.offhand air
function guns:recluse/resetads
#replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray"}','{"text":"-Liu Feng","color":"gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:2,gun:1,sunshot:1} 1
tag @s[scores={magazine=..35},predicate=!aestd1:flags/is_sprinting] add reloading
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1}}},predicate=!aestd1:flags/is_sprinting] if score @s magazine matches ..35 unless score @s feedingFrenzy matches 1.. run function guns:recluse/loading
execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{gun:1,recluse:1}}},predicate=!aestd1:flags/is_sprinting] if score @s magazine matches ..35 if score @s feedingFrenzy matches 1.. run function guns:recluse/fastloading
