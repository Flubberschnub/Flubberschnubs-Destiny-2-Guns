##fullmag
function guns:graviton/resetads
execute as @s run scoreboard players set @s aestd.item.slot -1
data modify storage aestd:input nbt set value {magazine:30}
function aestd1:item/merge_nbt
scoreboard players set @s magazine 30
