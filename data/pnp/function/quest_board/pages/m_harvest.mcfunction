data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.harvest",fallback:"Harvest"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.hand_in_6_wheat_6",fallback:"Hand in 6 Wheat (%s/6)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_farm_pack",fallback:"Reward: Farm Pack"},"\n"], color: "#7a5a30"}
