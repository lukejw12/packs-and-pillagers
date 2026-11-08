data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.c2_gold",fallback:"Gold Rush"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.c2_gold_task",fallback:"Barter with Piglins (%s/5)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.c2_gold_reward",fallback:"Reward: Golden Helmet"},"\n"], color: "#7a5a30"}
