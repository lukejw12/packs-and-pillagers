data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.card.q_housing.name",fallback:"New Homes"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.build_2_houses_2",fallback:"Build 2 Houses (%s/2)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_homes.reward",fallback:"Reward: Adventure Pack, ✦ Shelf and ✦ Barrel"},"\n"], color: "#7a5a30"}
