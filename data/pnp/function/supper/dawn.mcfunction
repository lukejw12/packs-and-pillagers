function pnp:coop/mates
function pnp:board/plot/get_coords
function pnp:supper/count with storage pnp:board tmp
scoreboard players set #c12 pnp.tmp 2
scoreboard players operation #need pnp.tmp = #vil pnp.tmp
scoreboard players operation #need pnp.tmp *= #c12 pnp.tmp
scoreboard players operation #bneed pnp.tmp = #bab pnp.tmp
scoreboard players operation #need pnp.tmp += #bneed pnp.tmp
