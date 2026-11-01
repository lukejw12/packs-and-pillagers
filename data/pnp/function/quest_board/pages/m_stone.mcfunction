data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.stone",fallback:"Stone"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.hand_in_8_cobblestone_8",fallback:"Hand in 8 Cobblestone (%s/8)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_3_emeralds",fallback:"Reward: 3 Emeralds"},"\n"], color: "#7a5a30"}
