data remove storage pnp:board qcc
$data modify storage pnp:board qcc set from storage pnp:qb chain[$(m)]
$execute if data storage pnp:board qcc{ev:"c2_portal"} if data storage pnp:found p$(o).nether_portal run return run function pnp:chapter2/catch_ev {qk:"c2_portal"}
$execute if data storage pnp:board qcc{ev:"c2_fortress"} if data storage pnp:gw p$(o).won.fortress run return run function pnp:chapter2/catch_ev {qk:"c2_fortress"}
$execute if data storage pnp:board qcc{ev:"c2_fireres"} if data storage pnp:found p$(o).potion_fire_res run return run function pnp:chapter2/catch_ev {qk:"c2_fireres"}
$execute if data storage pnp:board qcc{ev:"c2_bgate"} if data storage pnp:found p$(o).gate_bastion run return run function pnp:chapter2/catch_ev {qk:"c2_bgate"}
$execute if data storage pnp:board qcc{ev:"c2_bastion"} if data storage pnp:gw p$(o).won.bastion run return run function pnp:chapter2/catch_ev {qk:"c2_bastion"}
$execute if data storage pnp:board qcc{ev:"c2_debris"} if data storage pnp:found p$(o).ancient_debris run return run function pnp:chapter2/catch_ev {qk:"c2_debris"}
$execute if data storage pnp:board qcc{ev:"c2_ingot"} if data storage pnp:found p$(o).netherite_ingot run return run function pnp:chapter2/catch_ev {qk:"c2_ingot"}
$execute if data storage pnp:board qcc{ev:"c2_wither"} if data storage pnp:nether wither.p$(o) run return run function pnp:chapter2/catch_ev {qk:"c2_wither"}
$execute if data storage pnp:board qcc{ev:"c2_enter"} if data storage pnp:nether built2.p$(o) run return run function pnp:chapter2/catch_ev {qk:"c2_enter"}
$execute if data storage pnp:board qcc{ev:"c2_beacon"} if data storage pnp:nether beacon.p$(o) run return run function pnp:chapter2/catch_ev {qk:"c2_beacon"}
