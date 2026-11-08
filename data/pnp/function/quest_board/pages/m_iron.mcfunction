data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.iron_age",fallback:"Iron Age"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_iron.task",fallback:"Hand in 4 Iron Ingots (%s/4)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_combat_pack",fallback:"Reward: Combat Pack"},"\n"], color: "#7a5a30"}
