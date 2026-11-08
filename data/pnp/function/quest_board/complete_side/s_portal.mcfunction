$data modify storage pnp:qb p$(p).s.s_portal.n set value 0
$scoreboard players set #qx pnp.tmp $(p)
scoreboard players operation #qx pnp.tmp *= #1024 pnp.tmp
scoreboard players add #qx pnp.tmp 38
execute store result storage pnp:board qbw.x int 1 run scoreboard players get #qx pnp.tmp
$data modify storage pnp:board qbw.p set value $(p)
execute if score #qst pnp.tmp matches 0 run function pnp:quest_board/rewards/s_portal_0 with storage pnp:board qbw
execute if score #qst pnp.tmp matches 1 run function pnp:quest_board/rewards/s_portal_1 with storage pnp:board qbw
execute if score #qst pnp.tmp matches 2 run function pnp:quest_board/rewards/s_portal_2 with storage pnp:board qbw
scoreboard players add #qst pnp.tmp 1
$execute store result storage pnp:qb p$(p).s.s_portal.t int 1 run scoreboard players get #qst pnp.tmp
