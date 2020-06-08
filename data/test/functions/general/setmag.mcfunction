##setmag
scoreboard players set @s aestd.item.slot -1
execute store result storage aestd:input nbt.magazine int 1 run scoreboard players get @s magazine
function aestd1:item/merge_nbt
