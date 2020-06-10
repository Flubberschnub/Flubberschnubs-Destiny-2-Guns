##nocrit
#execute if score Range shootgun matches ..24 run effect give @e[distance=..1,type=#minecraft:mobs,type=!#minecraft:undead] instant_damage 1 2 true
#execute if score Range shootgun matches ..24 run effect give @e[distance=..1,type=#minecraft:mobs,type=#minecraft:undead] instant_health 1 2 true
#execute if score Range shootgun matches 25.. run effect give @e[distance=..1,type=#minecraft:mobs,type=!#minecraft:undead] instant_damage 1 1 true
#execute if score Range shootgun matches 25.. run effect give @e[distance=..1,type=#minecraft:mobs,type=#minecraft:undead] instant_health 1 1 true
execute as @s run function aestd1:entity/get_uuid
execute if score Range shootgun matches 0.. run effect give @a[distance=..1,tag=!shooter] instant_damage 1 0 true
execute positioned ~ ~ ~ if entity @e[distance=..1,type=#minecraft:mobs,scores={hp=..11}] run scoreboard players set Kill shootgun 1
execute positioned ~ ~ ~ if entity @e[distance=..1,type=#aestd1:bosses,scores={hp=..11}] run scoreboard players set Kill shootgun 1
execute as @e[distance=..1,type=#minecraft:mobs] run function aestd1:entity/anger
execute as @e[distance=..1,type=#minecraft:mobs] run scoreboard players set @s aestd.damage 1100
execute as @e[distance=..1,type=#aestd1:bosses] run scoreboard players set @s aestd.damage 1100
execute as @e[distance=..1,type=#minecraft:mobs] run function aestd1:entity/damage
execute as @e[distance=..1,type=#aestd1:bosses] run function aestd1:entity/damage
scoreboard players reset @e aestd.damage
execute positioned ~ ~ ~ if entity @a[distance=..1,tag=!shooter,scores={hp=..6}] run scoreboard players set Kill shootgun 1
execute if score Kill shootgun matches 1 at @s run playsound kill master @s
execute if score Kill shootgun matches 1 positioned ~ ~ ~ run function guns:graviton/kill
scoreboard players reset Kill shootgun
