##decoil
execute as @s[tag=!ads] run function guns:sunshot/noadsrecoil
execute as @s[tag=ads] run function guns:sunshot/adsrecoil
##timer
execute as @s[tag=recoil,scores={recoiltimer=..10}] at @s run tp @s ~ ~ ~ ~ ~0.5
scoreboard players add @s[tag=recoil] recoiltimer 1
execute as @s[scores={recoiltimer=12..}] run function guns:general/setmag
execute as @s[scores={recoiltimer=12..}] run tag @s[tag=recoil] remove recoil
execute as @s[scores={recoiltimer=12..}] run scoreboard players reset @s recoiltimer
#execute as @a[scores={recoiltimer=..11}] run schedule function guns:sunshot/decoil 1t append
