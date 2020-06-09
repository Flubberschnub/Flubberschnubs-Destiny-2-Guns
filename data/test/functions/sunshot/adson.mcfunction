##adson
scoreboard players add @s adstimer 1
execute if score @s adstimer matches 1 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:54,gun:1,sunshot:2} 1
execute if score @s adstimer matches 2 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:55,gun:1,sunshot:2} 1
execute if score @s adstimer matches 3 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Sunshot","color":"gold","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:3,gun:1,sunshot:2} 1
tag @s add ads
effect give @s slowness 1000000 3 true
execute at @s if score @s adstimer matches 1 run playsound minecraft:adson master @s
execute if score @s adstimer matches ..3 run schedule function test:sunshot/scheduleadson 1t
execute if score @s adstimer matches 4.. run function test:general/setmag
execute if score @s adstimer matches 4.. run scoreboard players reset @s adstimer

##setmag
execute as @s run function test:general/setmag
