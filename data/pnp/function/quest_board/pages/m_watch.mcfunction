data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.q.m_watch",fallback:"First Watch"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_watch.task",fallback:"Give a villager a sword (%s/1)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_watch.reward",fallback:"Reward: a Wolf"},"\n"], color: "#7a5a30"}
