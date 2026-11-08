$execute store result score #qm pnp.tmp run data get storage pnp:qb p$(p).m
$execute store result storage pnp:board qbr.mp int 1 run data get storage pnp:qb p$(p).mp
data modify storage pnp:board qbl set value [{text:""}]
execute if score #qm pnp.tmp matches ..18 run data modify storage pnp:board qbl append value {text:"",extra:[{translate:"pnp.quest_board.chapter_1",fallback:"Chapter 1"},"\n"],color:"#5a1e0e",bold:true}
execute if score #qm pnp.tmp matches 19.. run data modify storage pnp:board qbl append value {text:"",extra:[{translate:"pnp.quest_board.chapter_2_title",fallback:"Chapter 2: The Nether"},"\n"],color:"#5a1e0e",bold:true}
scoreboard players operation #qn pnp.tmp = #qm pnp.tmp
scoreboard players add #qn pnp.tmp 1
execute if score #qm pnp.tmp matches 19.. run scoreboard players remove #qn pnp.tmp 19
execute if score #qm pnp.tmp matches ..18 run scoreboard players set #qtot pnp.tmp 19
execute if score #qm pnp.tmp matches 19.. run scoreboard players set #qtot pnp.tmp 13
execute if score #qm pnp.tmp matches ..31 run data modify storage pnp:board qbl append value {text:"",extra:[{translate:"pnp.quest_board.quest_n_of",fallback:"Quest %s of %s",with:[{score:{name:"#qn",objective:"pnp.tmp"}},{score:{name:"#qtot",objective:"pnp.tmp"}}]},"\n\n"],color:"#7a6650"}
execute store result storage pnp:board qmk.m int 1 run scoreboard players get #qm pnp.tmp
$data modify storage pnp:board qmk.p set value $(p)
$data modify storage pnp:board qmk.x set value $(x)
execute if score #qm pnp.tmp matches ..31 run function pnp:quest_board/render_current with storage pnp:board qmk
execute if score #qm pnp.tmp matches 32.. run data modify storage pnp:board qbl append value {text:"",extra:[{translate:"pnp.quest_board.all_done",fallback:"Chapter 2 done! The End is next."},"\n"],color:"#3b2a1a"}
$execute if score #qm pnp.tmp matches 32.. in pnp:board positioned $(x).5 65 16.25 run kill @e[tag=pnp.qb_tile,distance=..6]
