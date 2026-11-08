data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.q.m_supply",fallback:"Supply Line"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_supply.task",fallback:"Link two machines with the Wrench (%s/1)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_supply.reward",fallback:"Reward: ✦ Hopper, ✦ Dropper and 2 Iron Ingots"},"\n"], color: "#7a5a30"}
