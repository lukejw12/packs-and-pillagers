$data modify storage pnp:pedia2 ps.nm set from storage pnp:pedia2 meta.$(id).n
$data modify storage pnp:pedia2 ps.st set from storage pnp:pedia2 meta.$(id).st
$data modify storage pnp:pedia2 ps.tzs set from storage pnp:pedia2 meta.$(id).tzs
data modify storage pnp:pedia2 ps.kn set value 0b
$execute if data storage pnp:found p$(p).$(id) run data modify storage pnp:pedia2 ps.kn set value 1b
$execute if data storage pnp:pedia2 all.p$(p) run data modify storage pnp:pedia2 ps.kn set value 1b
$execute if data storage pnp:pedia2 ps{kn:0b} if data storage pnp:pedia2 ir.$(id) run function pnp:cardopedia/known_idea {id:"$(id)",p:$(p)}
$data modify storage pnp:pedia2 v.p$(me).s$(i) set value {id:"$(id)"}
$data modify storage pnp:pedia2 v.p$(me).s$(i).k set from storage pnp:pedia2 ps.kn
execute if data storage pnp:pedia2 ps{kn:1b} as @e[type=item_display,tag=pnp.book_base,distance=..40] if score @s pnp.pid = #me pnp.tmp at @s run function pnp:cardopedia/card_known with storage pnp:pedia2 ps
execute if data storage pnp:pedia2 ps{kn:0b} as @e[type=item_display,tag=pnp.book_base,distance=..40] if score @s pnp.pid = #me pnp.tmp at @s run function pnp:cardopedia/card_unknown with storage pnp:pedia2 ps
$scoreboard players set @e[tag=pnp.pd_new] pnp.pslot $(i)
execute if data storage pnp:pedia2 ps{kn:1b} store result score @e[type=text_display,tag=pnp.pd_new] pnp.pts run data get storage pnp:pedia2 ps.st 1000
execute if data storage pnp:pedia2 ps{kn:0b} run scoreboard players set @e[type=text_display,tag=pnp.pd_new] pnp.pts 510
scoreboard players operation @e[tag=pnp.pd_new] pnp.pid = #me pnp.tmp
tag @e[tag=pnp.pd_new] remove pnp.pd_new
