##shoot
scoreboard players reset Crit shootgun
stopsound @s master sunshotreload
tag @s[tag=reloading] remove reloading
tag @s add shooter
scoreboard players remove @s magazine 1
function test:general/setmag
execute at @s run playsound sunshot master @a[distance=..30] ~ ~ ~ 5
tag @s add rpm
scoreboard players reset @s recoiltimer
execute at @s anchored eyes run function test:sunshot/raycast
execute at @s[tag=ads] run tp @s ~ ~ ~ ~ ~-5
execute at @s[tag=!ads] run tp @s ~ ~ ~ ~ ~-10
tag @s add recoil
function test:sunshot/decoil
scoreboard players reset @s shootgun
schedule function test:sunshot/resetrpm 8t
#schedule function test:sunshot/decoil 2t
#schedule function test:sunshot/decoil 3t
#schedule function test:sunshot/decoil 4t
#schedule function test:sunshot/decoil 5t
