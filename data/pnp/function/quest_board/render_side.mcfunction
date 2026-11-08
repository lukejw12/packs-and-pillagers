data modify storage pnp:board qbs set value [{text:""},{text:"",extra:[{translate:"pnp.quest_board.side_quests",fallback:"Side Quests"},"\n\n"],color:"#5a1e0e",bold:true}]
$function pnp:quest_board/offers_ensure {p:$(p)}
$data modify storage pnp:board qol set from storage pnp:qb p$(p).offer
$data modify storage pnp:board qoc set value {p:$(p)}
function pnp:quest_board/offer_loop
$execute unless data storage pnp:qb p$(p).offer[0] run data modify storage pnp:board qbs append value {text:"",extra:[{translate:"pnp.quest_board.side_all_done",fallback:"You've finished every side quest!"},"\n"],color:"#3b2a1a"}
$execute store result score #qdl pnp.tmp run data get storage pnp:qb p$(p).orefresh
scoreboard players add #qdl pnp.tmp 3
scoreboard players operation #qdl pnp.tmp -= #day pnp.tmp
execute if score #qdl pnp.tmp matches ..1 run data modify storage pnp:board qbs append value {text:"\n",extra:[{translate:"pnp.quest_board.side_new_dawn",fallback:"New side quests at the next dawn."},"\n"],color:"#7a6650",italic:true}
execute if score #qdl pnp.tmp matches 2.. run data modify storage pnp:board qbs append value {text:"\n",extra:[{translate:"pnp.quest_board.side_new_days",fallback:"New side quests in %s days.",with:[{score:{name:"#qdl",objective:"pnp.tmp"}}]},"\n"],color:"#7a6650",italic:true}
data modify storage pnp:board qbs append value {text:"",extra:[{translate:"pnp.quest_board.side_keep",fallback:"Quests you've started stay put."}],color:"#7a6650",italic:true}
