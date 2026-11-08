scoreboard players set #qh pnp.tmp 0
$execute if data storage pnp:found p$(p).crimson_forest run scoreboard players add #qh pnp.tmp 1
$execute if data storage pnp:found p$(p).warped_forest run scoreboard players add #qh pnp.tmp 1
$execute if data storage pnp:found p$(p).soul_sand_valley run scoreboard players add #qh pnp.tmp 1
$execute if data storage pnp:found p$(p).basalt_deltas run scoreboard players add #qh pnp.tmp 1
$execute store result storage pnp:qb p$(p).mp int 1 run scoreboard players get #qh pnp.tmp
$execute if score #qh pnp.tmp matches $(n).. run function pnp:quest_board/main_done {p:$(p)}
