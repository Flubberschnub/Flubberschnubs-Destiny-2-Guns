##nocrit
#execute if score Range shootgun matches ..24 run effect give @e[distance=..1,type=#minecraft:mobs,type=!#minecraft:undead] instant_damage 1 2 true
#execute if score Range shootgun matches ..24 run effect give @e[distance=..1,type=#minecraft:mobs,type=#minecraft:undead] instant_health 1 2 true
#execute if score Range shootgun matches 25.. run effect give @e[distance=..1,type=#minecraft:mobs,type=!#minecraft:undead] instant_damage 1 1 true
#execute if score Range shootgun matches 25.. run effect give @e[distance=..1,type=#minecraft:mobs,type=#minecraft:undead] instant_health 1 1 true
execute if score Range shootgun matches 0.. run effect give @a[distance=..1,tag=!shooter] instant_damage 1 1 true
execute positioned ~ ~ ~ if entity @e[distance=..1,type=#minecraft:mobs,scores={hp=..22}] run scoreboard players set Kill shootgun 1
execute positioned ~ ~ ~ if entity @e[distance=..1,type=#aestd1:bosses,scores={hp=..22}] run scoreboard players set Kill shootgun 1
execute as @e[distance=..1,type=#minecraft:mobs] run scoreboard players set @s aestd.damage 2200
execute as @e[distance=..1,type=#aestd1:bosses] run scoreboard players set @s aestd.damage 2200
execute as @e[distance=..1,type=#minecraft:mobs] run function aestd1:entity/damage
execute as @e[distance=..1,type=#aestd1:bosses] run function aestd1:entity/damage
scoreboard players reset @e aestd.damage
execute positioned ~ ~ ~ if entity @a[distance=..1,tag=!shooter,scores={hp=..12}] run scoreboard players set Kill shootgun 1
execute if score Kill shootgun matches 1 at @s run playsound kill master @s
scoreboard players reset Kill shootgun
