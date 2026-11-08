data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.q.c2_beacon",fallback:"A Beacon"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.c2_beacon.task",fallback:"Build and light a Beacon (%s/1)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.q.c2_beacon.reward",fallback:"Reward: 2 Eyes of Ender"},"\n"], color: "#7a5a30"}
