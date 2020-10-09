##nocrit
#execute if score Range shootgun matches ..24 run effect give @e[distance=..1,type=#guns:mobs,type=!#minecraft:undead] instant_damage 1 2 true
#execute if score Range shootgun matches ..24 run effect give @e[distance=..1,type=#guns:mobs,type=#minecraft:undead] instant_health 1 2 true
#execute if score Range shootgun matches 25.. run effect give @e[distance=..1,type=#guns:mobs,type=!#minecraft:undead] instant_damage 1 1 true
#execute if score Range shootgun matches 25.. run effect give @e[distance=..1,type=#guns:mobs,type=#minecraft:undead] instant_health 1 1 true
execute as @s run function aestd1:entity/get_uuid
execute if score Range shootgun matches 0.. run effect give @a[distance=..1,tag=!shooter] instant_damage 1 0 true
execute positioned ~ ~ ~ if entity @e[distance=..1,type=#guns:mobs,scores={hp=..2}] run scoreboard players set Kill shootgun 1
execute positioned ~ ~ ~ if entity @e[distance=..1,type=#aestd1:bosses,scores={hp=..2}] run scoreboard players set Kill shootgun 1
execute if score @s masterOfArms matches 1.. positioned ~ ~ ~ if entity @e[distance=..1,type=#guns:mobs,scores={hp=..4}] run scoreboard players set Kill shootgun 1
execute if score @s masterOfArms matches 1.. positioned ~ ~ ~ if entity @e[distance=..1,type=#aestd1:bosses,scores={hp=..4}] run scoreboard players set Kill shootgun 1
tag @e[distance=..1,type=#guns:mobs] add aestd.damage.hurt_by_player
tag @e[distance=..1,type=#aestd1:bosses] add aestd.damage.hurt_by_player
execute as @e[distance=..1,type=#guns:mobs] run scoreboard players set @s aestd.damage 200
execute as @e[distance=..1,type=#aestd1:bosses] run scoreboard players set @s aestd.damage 200
execute if score @s masterOfArms matches 1.. as @e[distance=..1,type=#guns:mobs] run scoreboard players set @s aestd.damage 400
execute if score @s masterOfArms matches 1.. as @e[distance=..1,type=#aestd1:bosses] run scoreboard players set @s aestd.damage 400
execute as @e[distance=..1,type=#guns:mobs] run function aestd1:entity/damage
execute as @e[distance=..1,type=#aestd1:bosses] run function aestd1:entity/damage
scoreboard players reset @e aestd.damage
tag @e[tag=aestd.damage.hurt_by_player] remove aestd.damage.hurt_by_player
execute positioned ~ ~ ~ if entity @a[distance=..1,tag=!shooter,scores={hp=..2}] run scoreboard players set Kill shootgun 1
execute if score Kill shootgun matches 1 at @s run playsound kill master @s
execute if score Kill shootgun matches 1 positioned ~ ~ ~ run function guns:recluse/kill
scoreboard players reset Kill shootgun
