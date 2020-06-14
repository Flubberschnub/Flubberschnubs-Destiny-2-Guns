##shoot
scoreboard players reset Crit shootgun
stopsound @s master sunshotreload
tag @s[tag=reloading] remove reloading
tag @s add shooter
scoreboard players remove @s magazine 1
function guns:general/setmag
execute at @s run playsound sunshot master @a[distance=..30] ~ ~ ~ 5
tag @s add rpm
scoreboard players reset @s recoiltimer
execute at @s anchored eyes run function guns:sunshot/raycast
execute at @s[tag=ads] run tp @s ~ ~ ~ ~ ~-5
execute at @s[tag=!ads] run tp @s ~ ~ ~ ~ ~-10
tag @s add recoil
function guns:sunshot/decoil
#scoreboard players reset @s shootgun
tag @s add holding
schedule function guns:sunshot/resetrpm 8t
#schedule function guns:sunshot/decoil 2t
#schedule function guns:sunshot/decoil 3t
#schedule function guns:sunshot/decoil 4t
#schedule function guns:sunshot/decoil 5t
