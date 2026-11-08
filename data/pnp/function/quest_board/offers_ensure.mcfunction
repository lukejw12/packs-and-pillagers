$execute if data storage pnp:qb p$(p).offer run return 0
$data modify storage pnp:qb p$(p).offer set value []
scoreboard players set #qex pnp.tmp 0
$function pnp:quest_board/fill_offers {p:$(p)}
$execute store result storage pnp:qb p$(p).orefresh int 1 run scoreboard players get #day pnp.tmp
