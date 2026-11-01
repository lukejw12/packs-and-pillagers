data modify storage pnp:board qbl set value [{text:""},{text: "Chapter 1\n", color: "#5a1e0e", bold: true},{text: "Humble Beginnings\n\n", color: "#7a3a1e", italic: true}]
$execute store result score #qm pnp.tmp run data get storage pnp:qb p$(p).m
$execute store result storage pnp:board qbr.mp int 1 run data get storage pnp:qb p$(p).mp
execute if score #qm pnp.tmp matches 1.. run data modify storage pnp:board qbl append value {text: "✔ Lumber\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 0 run function pnp:quest_board/pages/m_lumber with storage pnp:board qbr
execute if score #qm pnp.tmp matches 2.. run data modify storage pnp:board qbl append value {text: "✔ Stone\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 1 run function pnp:quest_board/pages/m_stone with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..0 run data modify storage pnp:board qbl append value {text: "○ Stone\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 3.. run data modify storage pnp:board qbl append value {text: "✔ Harvest\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 2 run function pnp:quest_board/pages/m_harvest with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..1 run data modify storage pnp:board qbl append value {text: "○ Harvest\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 4.. run data modify storage pnp:board qbl append value {text: "✔ Growing Village\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 3 run function pnp:quest_board/pages/m_village with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..2 run data modify storage pnp:board qbl append value {text: "○ Growing Village\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 5.. run data modify storage pnp:board qbl append value {text: "✔ New Homes\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 4 run function pnp:quest_board/pages/m_homes with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..3 run data modify storage pnp:board qbl append value {text: "○ New Homes\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 6.. run data modify storage pnp:board qbl append value {text: "✔ Survivor\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 5 run function pnp:quest_board/pages/m_survivor with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..4 run data modify storage pnp:board qbl append value {text: "○ Survivor\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 7.. run data modify storage pnp:board qbl append value {text: "✔ Iron Age\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 6 run function pnp:quest_board/pages/m_iron with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..5 run data modify storage pnp:board qbl append value {text: "○ Iron Age\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 8.. run data modify storage pnp:board qbl append value {text: "✔ Into the Depths\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 7 run function pnp:quest_board/pages/m_depths with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..6 run data modify storage pnp:board qbl append value {text: "○ Into the Depths\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 9.. run data modify storage pnp:board qbl append value {text: "✔ Redstone Caves\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 8 run function pnp:quest_board/pages/m_rcaves with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..7 run data modify storage pnp:board qbl append value {text: "○ Redstone Caves\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 10.. run data modify storage pnp:board qbl append value {text: "✔ A Charged Core\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 9 run function pnp:quest_board/pages/m_core with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..8 run data modify storage pnp:board qbl append value {text: "○ A Charged Core\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 11.. run data modify storage pnp:board qbl append value {text: "✔ Summoning Orb\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 10 run function pnp:quest_board/pages/m_orb with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..9 run data modify storage pnp:board qbl append value {text: "○ Summoning Orb\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 12.. run data modify storage pnp:board qbl append value {text: "✔ Awakening\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 11 run function pnp:quest_board/pages/m_awaken with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..10 run data modify storage pnp:board qbl append value {text: "○ Awakening\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 13.. run data modify storage pnp:board qbl append value {text: "✔ The Redstone Monstrosity\n", color: "#4a7a2a"}
execute if score #qm pnp.tmp matches 12 run function pnp:quest_board/pages/m_boss with storage pnp:board qbr
execute if score #qm pnp.tmp matches ..11 run data modify storage pnp:board qbl append value {text: "○ The Redstone Monstrosity\n", color: "#a8957a"}
execute if score #qm pnp.tmp matches 13.. run data modify storage pnp:board qbl append value {text: "\nChapter 1 complete!\n", color: "#9a6a00", bold: true}
execute if score #qm pnp.tmp matches 13.. run data modify storage pnp:board qbl append value {text: "Chapter 2, the Nether, is coming soon.\n", color: "#7a5a30"}
data modify storage pnp:board qbl append value {text: "\nDrop cards on this book to hand them in.", color: "#8a7660", italic: true}
data modify storage pnp:board qbs set value [{text:""},{text: "Side Quests\n\n", color: "#5a1e0e", bold: true}]
$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.s_feast.t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.s_feast.n
function pnp:quest_board/pages/s_feast with storage pnp:board qbr
$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.s_wool.t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.s_wool.n
function pnp:quest_board/pages/s_wool with storage pnp:board qbr
$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.s_baker.t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.s_baker.n
function pnp:quest_board/pages/s_baker with storage pnp:board qbr
$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.s_hunter.t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.s_hunter.n
function pnp:quest_board/pages/s_hunter with storage pnp:board qbr
$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.s_demo.t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.s_demo.n
function pnp:quest_board/pages/s_demo with storage pnp:board qbr
$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.s_delver.t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.s_delver.n
function pnp:quest_board/pages/s_delver with storage pnp:board qbr
$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.s_family.t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.s_family.n
function pnp:quest_board/pages/s_family with storage pnp:board qbr
$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.s_angler.t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.s_angler.n
function pnp:quest_board/pages/s_angler with storage pnp:board qbr
$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.s_wanderer.t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.s_wanderer.n
function pnp:quest_board/pages/s_wanderer with storage pnp:board qbr
$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.s_miner.t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.s_miner.n
function pnp:quest_board/pages/s_miner with storage pnp:board qbr
$execute store result storage pnp:board qbr.t int 1 run data get storage pnp:qb p$(p).s.s_slayer.t
$execute store result storage pnp:board qbr.n int 1 run data get storage pnp:qb p$(p).s.s_slayer.n
function pnp:quest_board/pages/s_slayer with storage pnp:board qbr
$execute in pnp:board positioned $(x).5 65 16.25 as @e[type=text_display,tag=pnp.qb_l,distance=..5,limit=1] run data modify entity @s text set from storage pnp:board qbl
$execute in pnp:board positioned $(x).5 65 16.25 as @e[type=text_display,tag=pnp.qb_r,distance=..5,limit=1] run data modify entity @s text set from storage pnp:board qbs
