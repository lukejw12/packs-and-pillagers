execute unless data storage pnp:board scan.counts.crafting_table unless data storage pnp:board scan.counts.furnace unless data storage pnp:board scan.counts.house unless data storage pnp:board scan.counts.farm run return fail
scoreboard players set #bestn pnp.tmp 0
data remove storage pnp:board scan.best
data modify storage pnp:board scan.list set from storage pnp:cards recipes
function pnp:board/stack/suggest/loop
execute unless data storage pnp:board scan.best run return fail
return 1
