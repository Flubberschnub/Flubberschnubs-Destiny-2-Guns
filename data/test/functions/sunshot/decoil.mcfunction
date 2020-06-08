##decoil
execute as @a[tag=!ads] run function test:sunshot/noadsrecoil
execute as @a[tag=ads] run function test:sunshot/adsrecoil
##timer
execute as @a[tag=recoil,scores={recoiltimer=..10}] at @s run tp @s ~ ~ ~ ~ ~0.5
scoreboard players add @a[tag=recoil] recoiltimer 1
execute as @a[scores={recoiltimer=12..}] run function test:general/setmag
execute as @a[scores={recoiltimer=12..}] run tag @a[tag=recoil] remove recoil
execute as @a[scores={recoiltimer=12..}] run scoreboard players reset @s recoiltimer
execute as @a[scores={recoiltimer=..11}] run schedule function test:sunshot/decoil 1t append
