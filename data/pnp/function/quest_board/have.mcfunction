$execute store result score #qm pnp.tmp run data get storage pnp:qb p$(p).m
$scoreboard players set #qp pnp.tmp $(p)
$execute if score #qm pnp.tmp matches 3 run function pnp:quest_board/have/m_village {p:$(p)}
$execute if score #qm pnp.tmp matches 4 run function pnp:quest_board/have/m_homes {p:$(p)}
$execute if score #qm pnp.tmp matches 9 run function pnp:quest_board/have/m_core {p:$(p)}
$execute if score #qm pnp.tmp matches 10 run function pnp:quest_board/have/m_orb {p:$(p)}
