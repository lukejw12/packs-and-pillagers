data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.quest_board.into_the_depths",fallback:"Into the Depths"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.explore_a_cave_3_times_3",fallback:"Explore a Cave 3 times (%s/3)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_the_redstone_caves",fallback:"Reward: the Redstone Caves"},"\n"], color: "#7a5a30"}
