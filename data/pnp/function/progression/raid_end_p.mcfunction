$execute store result score #rlo pnp.tmp run data get storage pnp:qb p$(p).rloss
$data remove storage pnp:qb p$(p).rlive
execute if score #rlo pnp.tmp matches 0 run function pnp:quest_board/event_self {qk:"raid_clean"}
