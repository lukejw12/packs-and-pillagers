data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.q.m_specialist",fallback:"Specialist"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_specialist.task",fallback:"Give a villager a tool (%s/1)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_specialist.reward",fallback:"Reward: a Cave, a Stone Pickaxe and 4 Torches"},"\n"], color: "#7a5a30"}
