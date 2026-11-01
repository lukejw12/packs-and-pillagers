$function pnp:quest_board/init {p:$(o)}
$data modify storage pnp:board qba set value {p:$(o),n:1}
$execute store result score #qm pnp.tmp run data get storage pnp:qb p$(o).m
$data modify storage pnp:board qev2 set value "$(qk)"
execute if data storage pnp:board {qev2:"rm_dead"} if score #qm pnp.tmp matches ..11 run function pnp:quest_board/fast_forward with storage pnp:board qba
execute if score #qm pnp.tmp matches 5 if data storage pnp:board {qev2:"night"} run function pnp:quest_board/add_main_progress with storage pnp:board qba
execute if score #qm pnp.tmp matches 7 if data storage pnp:board {qev2:"cave"} run function pnp:quest_board/add_main_progress with storage pnp:board qba
execute if score #qm pnp.tmp matches 8 if data storage pnp:board {qev2:"rcaves"} run function pnp:quest_board/add_main_progress with storage pnp:board qba
execute if score #qm pnp.tmp matches 11 if data storage pnp:board {qev2:"rm_core"} run function pnp:quest_board/add_main_progress with storage pnp:board qba
execute if score #qm pnp.tmp matches 12 if data storage pnp:board {qev2:"rm_dead"} run function pnp:quest_board/add_main_progress with storage pnp:board qba
execute if data storage pnp:board {qev2:"kill"} run function pnp:quest_board/accept_side/s_hunter with storage pnp:board qba
execute if data storage pnp:board {qev2:"tnt"} run function pnp:quest_board/accept_side/s_demo with storage pnp:board qba
execute if data storage pnp:board {qev2:"delve"} run function pnp:quest_board/accept_side/s_delver with storage pnp:board qba
execute if data storage pnp:board {qev2:"baby"} run function pnp:quest_board/accept_side/s_family with storage pnp:board qba
execute if data storage pnp:board {qev2:"fish"} run function pnp:quest_board/accept_side/s_angler with storage pnp:board qba
execute if data storage pnp:board {qev2:"village"} run function pnp:quest_board/accept_side/s_wanderer with storage pnp:board qba
execute if data storage pnp:board {qev2:"wmine"} run function pnp:quest_board/accept_side/s_miner with storage pnp:board qba
execute if data storage pnp:board {qev2:"wkill"} run function pnp:quest_board/accept_side/s_slayer with storage pnp:board qba
