##reload gun
scoreboard players reset @s[scores={magazine=1..}] reloadtimer
replaceitem entity @s weapon.offhand air
function test:graviton/resetads
#replaceitem entity @s weapon.mainhand carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"yellow","bold":true,"italic":false}',Lore:['{"text":"\\"Can\'t outrun the sunrise.\\"","color":"gray"}','{"text":"-Liu Feng","color":"gray"}']},HideFlags:63,Unbreakable:1b,CustomModelData:2,gun:1,sunshot:1} 1
tag @s[scores={magazine=..29}] add reloading
execute if score @s magazine matches ..29 run function test:graviton/loading
