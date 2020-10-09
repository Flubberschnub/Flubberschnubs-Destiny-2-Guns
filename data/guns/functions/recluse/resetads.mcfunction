#resetads
replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"My bite will turn your","color":"gray"}','{"text":"sweet flesh to vile rot.","color":"gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:120,gun:1,recluse:1,ads:0} 1
function guns:general/setmag
effect clear @s slowness
tag @s remove ads
