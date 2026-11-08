function pnp:nether/table_p
function pnp:nether/build with storage pnp:board ng
function pnp:nether/coords with storage pnp:board ng
function pnp:nether/move_cam with storage pnp:board nt
function pnp:nether/ensure_shops with storage pnp:board nt
scoreboard players set @s pnp.realm 1
function pnp:chapter2/enter_event with storage pnp:board ng
playsound minecraft:block.portal.travel master @s ~ ~ ~ 0.25 1.3
