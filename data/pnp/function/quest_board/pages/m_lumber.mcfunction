data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.lumber",fallback:"Lumber"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.hand_in_8_oak_logs_8",fallback:"Hand in 8 Oak Logs (%s/8)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_humble_pack",fallback:"Reward: Humble Pack"},"\n"], color: "#7a5a30"}
