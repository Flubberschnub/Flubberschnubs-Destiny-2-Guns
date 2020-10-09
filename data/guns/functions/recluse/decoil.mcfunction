##decoil
execute as @s[tag=!ads] run function guns:recluse/noadsrecoil
execute as @s[tag=ads] run function guns:recluse/adsrecoil
##timer
scoreboard players add @s[tag=recoil] recoiltimer 1
execute as @s[tag=recoil,scores={recoiltimer=1..4}] at @s run tp @s ~ ~ ~ ~ ~-0.5
execute as @s[scores={recoiltimer=4..}] run function guns:general/setmag
execute as @s[scores={recoiltimer=4..}] run tag @s[tag=recoil] remove recoil
execute as @s[scores={recoiltimer=4..}] run scoreboard players reset @s recoiltimer
