$data modify storage pnp:qb p$(p).mp set value 0
$execute store result score #qm pnp.tmp run data get storage pnp:qb p$(p).m
$scoreboard players set #qx pnp.tmp $(p)
scoreboard players operation #qx pnp.tmp *= #1024 pnp.tmp
scoreboard players add #qx pnp.tmp 38
execute store result storage pnp:board qbw.x int 1 run scoreboard players get #qx pnp.tmp
$data modify storage pnp:board qbw.p set value $(p)
execute if score #qm pnp.tmp matches 0 run function pnp:quest_board/rewards/m_lumber with storage pnp:board qbw
execute if score #qm pnp.tmp matches 1 run function pnp:quest_board/rewards/m_stone with storage pnp:board qbw
execute if score #qm pnp.tmp matches 2 run function pnp:quest_board/rewards/m_harvest with storage pnp:board qbw
execute if score #qm pnp.tmp matches 3 run function pnp:quest_board/rewards/m_village with storage pnp:board qbw
execute if score #qm pnp.tmp matches 4 run function pnp:quest_board/rewards/m_homes with storage pnp:board qbw
execute if score #qm pnp.tmp matches 5 run function pnp:quest_board/rewards/m_survivor with storage pnp:board qbw
execute if score #qm pnp.tmp matches 6 run function pnp:quest_board/rewards/m_iron with storage pnp:board qbw
execute if score #qm pnp.tmp matches 7 run function pnp:quest_board/rewards/m_depths with storage pnp:board qbw
execute if score #qm pnp.tmp matches 8 run function pnp:quest_board/rewards/m_rcaves with storage pnp:board qbw
execute if score #qm pnp.tmp matches 9 run function pnp:quest_board/rewards/m_core with storage pnp:board qbw
execute if score #qm pnp.tmp matches 10 run function pnp:quest_board/rewards/m_orb with storage pnp:board qbw
execute if score #qm pnp.tmp matches 11 run function pnp:quest_board/rewards/m_awaken with storage pnp:board qbw
execute if score #qm pnp.tmp matches 12 run function pnp:quest_board/rewards/m_boss with storage pnp:board qbw
scoreboard players add #qm pnp.tmp 1
$execute store result storage pnp:qb p$(p).m int 1 run scoreboard players get #qm pnp.tmp
