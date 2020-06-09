##Kill
scoreboard players set @s aestd.random.max 3
function aestd1:math/random_lcg
execute positioned ~ ~ ~ if score @s aestd.random matches 0..1 run function guns:graviton/cosmology/summon
