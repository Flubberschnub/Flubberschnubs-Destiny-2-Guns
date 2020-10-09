##adson
scoreboard players add @s adstimer 1
execute if score @s adstimer matches 1 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:122,gun:1,recluse:1,ads:1} 1
execute if score @s adstimer matches 2 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:123,gun:1,recluse:1,ads:1} 1
execute if score @s adstimer matches 3 run replaceitem entity @s weapon.mainhand minecraft:carrot_on_a_stick{display:{Name:'{"text":"The Recluse","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"a pew pew gun"}']},Unbreakable:1b,CustomModelData:121,gun:1,recluse:1,ads:1} 1
tag @s add ads
effect give @s slowness 1000000 1 true
execute at @s if score @s adstimer matches 1 run playsound minecraft:recluseadson master @s
execute if score @s adstimer matches ..3 run schedule function guns:recluse/scheduleadson 1t
execute if score @s adstimer matches 4.. run function guns:general/setmag
execute if score @s adstimer matches 4.. run scoreboard players reset @s adstimer

##setmag
execute as @s run function guns:general/setmag
