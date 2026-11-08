data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.q.m_hearth",fallback:"Hearth"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_hearth.task",fallback:"Build a Furnace (%s/1)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_hearth.reward",fallback:"Reward: a Mountain and 4 Coal"},"\n"], color: "#7a5a30"}
