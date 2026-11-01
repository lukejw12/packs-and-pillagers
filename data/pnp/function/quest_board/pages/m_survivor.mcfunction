data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.card.q_survivor.name",fallback:"Survivor"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.survive_2_nights_2",fallback:"Survive 2 nights (%s/2)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_golden_apple_and_2_emeralds",fallback:"Reward: Golden Apple and 2 Emeralds"},"\n"], color: "#7a5a30"}
