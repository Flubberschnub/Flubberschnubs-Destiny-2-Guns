#resetads
replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:'{"text":"Graviton Lance","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"Think of space-time as a tapestry on a loom.","color":"gray"}','{"text":"This weapon is the needle.","color":"gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:70,gun:1,graviton:1,ads:0} 1
function test:general/setmag
effect clear @s slowness
tag @s remove ads
