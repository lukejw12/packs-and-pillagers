data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.q.m_brewer",fallback:"Brewer"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_brewer.task",fallback:"Brew a potion (%s/1)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_brewer.reward",fallback:"Reward: Potion of Strength and 4 Gold Ingots"},"\n"], color: "#7a5a30"}
