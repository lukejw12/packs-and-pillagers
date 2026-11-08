data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.q.c2_lay",fallback:"Lay of the Land"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.c2_lay.task",fallback:"Find 2 Nether biomes (%s/2)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.c2_lay.reward",fallback:"Reward: Wastes Pack and ✦ Barter Station"},"\n"], color: "#7a5a30"}
