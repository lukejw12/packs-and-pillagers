$execute unless data storage pnp:nether built2.p$(p) run return 0
$function pnp:nether/coords {p:$(p)}
function pnp:supper/count with storage pnp:board nt
execute if score #vil pnp.tmp matches 0 if score #bab pnp.tmp matches 0 run return 0
scoreboard players operation #nneed pnp.tmp = #vil pnp.tmp
scoreboard players operation #nneed pnp.tmp *= #2 pnp.tmp
scoreboard players operation #nneed pnp.tmp += #bab pnp.tmp
execute if score #food pnp.tmp >= #nneed pnp.tmp run return 0
function pnp:coop/mates
tellraw @a[tag=pnp.mate] {translate:"pnp.nether.food_short",fallback:"Nether table: only %s food, but its villagers need %s by dawn.",with:[{score:{name:"#food",objective:"pnp.tmp"}},{score:{name:"#nneed",objective:"pnp.tmp"}}],color:"red"}
