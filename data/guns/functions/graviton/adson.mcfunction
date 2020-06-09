##adson
scoreboard players add @s adstimer 1
execute if score @s adstimer matches 1 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Graviton Lance","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:72,gun:1,graviton:1,ads:1} 1
execute if score @s adstimer matches 2 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Graviton Lance","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:73,gun:1,graviton:1,ads:1} 1
execute if score @s adstimer matches 3 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"Graviton Lance","color":"dark_purple","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:71,gun:1,graviton:1,ads:1} 1
tag @s add ads
effect give @s slowness 1000000 5 true
execute at @s if score @s adstimer matches 1 run playsound minecraft:gravitonadson master @s
execute if score @s adstimer matches ..3 run schedule function guns:graviton/scheduleadson 1t
execute if score @s adstimer matches 4.. run function guns:general/setmag
execute if score @s adstimer matches 4.. run scoreboard players reset @s adstimer

##setmag
execute as @s run function guns:general/setmag
