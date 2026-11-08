data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.q.m_horizons",fallback:"Far Horizons"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_horizons.task",fallback:"Win any gateway (%s/1)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_horizons.reward",fallback:"Reward: 2 Diamonds and a Golden Apple"},"\n"], color: "#7a5a30"}
