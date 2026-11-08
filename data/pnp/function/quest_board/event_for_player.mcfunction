$function pnp:quest_board/init {p:$(o)}
$data modify storage pnp:board qba set value {p:$(o),n:1}
$execute store result score #qm pnp.tmp run data get storage pnp:qb p$(o).m
$data modify storage pnp:board qev2 set value "$(qk)"
execute if data storage pnp:board {qev2:"rm_dead"} if score #qm pnp.tmp matches ..17 run function pnp:quest_board/fast_forward with storage pnp:board qba
execute if data storage pnp:board {qev2:"kill"} run function pnp:quest_board/accept_side/s_hunter with storage pnp:board qba
execute if data storage pnp:board {qev2:"tnt"} run function pnp:quest_board/accept_side/s_demo with storage pnp:board qba
execute if data storage pnp:board {qev2:"delve"} run function pnp:quest_board/accept_side/s_delver with storage pnp:board qba
execute if data storage pnp:board {qev2:"baby"} run function pnp:quest_board/accept_side/s_family with storage pnp:board qba
execute if data storage pnp:board {qev2:"fish"} run function pnp:quest_board/accept_side/s_angler with storage pnp:board qba
execute if data storage pnp:board {qev2:"village"} run function pnp:quest_board/accept_side/s_wanderer with storage pnp:board qba
execute if data storage pnp:board {qev2:"wmine"} run function pnp:quest_board/accept_side/s_miner with storage pnp:board qba
execute if data storage pnp:board {qev2:"wkill"} run function pnp:quest_board/accept_side/s_slayer with storage pnp:board qba
execute if data storage pnp:board {qev2:"wellfed"} run function pnp:quest_board/accept_side/s_cook with storage pnp:board qba
execute if data storage pnp:board {qev2:"wrench_link"} run function pnp:quest_board/accept_side/s_engineer with storage pnp:board qba
execute if data storage pnp:board {qev2:"sell"} run function pnp:quest_board/accept_side/s_merchant with storage pnp:board qba
execute if data storage pnp:board {qev2:"brew"} run function pnp:quest_board/accept_side/s_alchemist with storage pnp:board qba
execute if data storage pnp:board {qev2:"wtrip"} run function pnp:quest_board/accept_side/s_prospector with storage pnp:board qba
execute if data storage pnp:board {qev2:"c2_barter"} run function pnp:quest_board/accept_side/s_barterer with storage pnp:board qba
execute if data storage pnp:board {qev2:"blaze_kill"} run function pnp:quest_board/accept_side/s_firefighter with storage pnp:board qba
execute if data storage pnp:board {qev2:"forage"} run function pnp:quest_board/accept_side/s_forager with storage pnp:board qba
execute if data storage pnp:board {qev2:"nsup_clean"} run function pnp:quest_board/accept_side/s_provisioner with storage pnp:board qba
execute if data storage pnp:board {qev2:"raid_clean"} run function pnp:quest_board/accept_side/s_guardian with storage pnp:board qba
execute if data storage pnp:board {qev2:"incursion_won"} run function pnp:quest_board/accept_side/s_portal with storage pnp:board qba
function pnp:quest_board/ev_main
