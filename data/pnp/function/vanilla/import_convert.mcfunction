scoreboard players operation #ic pnp.tmp = #in pnp.tmp
scoreboard players operation #ic pnp.tmp /= #ig pnp.tmp
scoreboard players set #room pnp.tmp 32
scoreboard players operation #room pnp.tmp -= #impn pnp.tmp
execute if score #ic pnp.tmp > #room pnp.tmp run scoreboard players operation #ic pnp.tmp = #room pnp.tmp
execute if score #ic pnp.tmp matches ..0 run return 0
scoreboard players operation #left pnp.tmp = #ic pnp.tmp
scoreboard players operation #left pnp.tmp *= #ig pnp.tmp
scoreboard players operation #left pnp.tmp *= #-1 pnp.tmp
scoreboard players operation #left pnp.tmp += #in pnp.tmp
$execute if score #left pnp.tmp matches ..0 run data remove block ~ ~ ~ Items[{Slot:$(s)b}]
$execute if score #left pnp.tmp matches 1.. store result block ~ ~ ~ Items[{Slot:$(s)b}].count int 1 run scoreboard players get #left pnp.tmp
scoreboard players operation #impn pnp.tmp += #ic pnp.tmp
function pnp:board/plot/get_coords
$function pnp:vanilla/import_give {c:"$(c)"}
