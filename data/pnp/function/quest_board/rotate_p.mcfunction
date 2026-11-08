$execute unless data storage pnp:qb p$(p).offer run return run function pnp:quest_board/offers_ensure {p:$(p)}
$execute store result score #qdd pnp.tmp run data get storage pnp:qb p$(p).orefresh
scoreboard players operation #qdd pnp.tmp *= #-1 pnp.tmp
scoreboard players operation #qdd pnp.tmp += #day pnp.tmp
execute if score #qdd pnp.tmp matches ..2 run return 0
$data modify storage pnp:board qol set from storage pnp:qb p$(p).offer
data modify storage pnp:board qrm set from storage pnp:board qol
scoreboard players set #qex pnp.tmp 1
$data modify storage pnp:qb p$(p).offer set value []
$data modify storage pnp:board qkc set value {p:$(p)}
function pnp:quest_board/keep_loop
$function pnp:quest_board/fill_offers {p:$(p)}
scoreboard players set #qex pnp.tmp 0
$function pnp:quest_board/fill_offers {p:$(p)}
$execute store result storage pnp:qb p$(p).orefresh int 1 run scoreboard players get #day pnp.tmp
tellraw @s {text:"",extra:[{translate:"pnp.quest_board.side_refreshed",fallback:"New side quests are in the Quest Book."}],color:"#c8a26a"}
