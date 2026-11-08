execute if score #sev pnp.tmp matches ..0 run return 0
function pnp:quest_board/event_self {qk:"sell"}
scoreboard players remove #sev pnp.tmp 1
function pnp:progression/sell_loop
