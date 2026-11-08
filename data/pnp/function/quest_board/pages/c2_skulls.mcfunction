data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.c2_skulls",fallback:"Three Skulls"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.c2_skulls_task",fallback:"Collect Wither Skeleton Skulls (%s/3)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.c2_skulls_reward",fallback:"Reward: 4 Soul Sand"},"\n"], color: "#7a5a30"}
