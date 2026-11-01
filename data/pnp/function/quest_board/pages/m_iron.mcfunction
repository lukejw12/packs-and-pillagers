data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.iron_age",fallback:"Iron Age"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.hand_in_6_iron_ingots_6",fallback:"Hand in 6 Iron Ingots (%s/6)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_combat_pack",fallback:"Reward: Combat Pack"},"\n"], color: "#7a5a30"}
