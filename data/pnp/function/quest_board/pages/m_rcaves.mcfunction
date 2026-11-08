data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.card.redstone_caves.name",fallback:"Redstone Caves"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.clear_the_redstone_caves_1",fallback:"Clear the Redstone Caves (%s/1)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.m_rcaves.reward",fallback:"Reward: 5 Emeralds, ✦ Iron Golem, ✦ Bow and a Pumpkin"},"\n"], color: "#7a5a30"}
