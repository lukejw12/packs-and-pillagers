data modify storage pnp:board qbl append value {text:"▶ ",extra:[{translate:"pnp.card.summoning_orb.name",fallback:"Summoning Orb"},"\n"], color: "#2b1a0c", bold: true}
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.find_a_summoning_orb_evokers_1",fallback:"Find a Summoning Orb (Evokers) (%s/1)",with:["$(mp)"]},"\n"], color: "#2b1a0c"}
data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.reward_golden_apple",fallback:"Reward: Golden Apple"},"\n"], color: "#7a5a30"}
