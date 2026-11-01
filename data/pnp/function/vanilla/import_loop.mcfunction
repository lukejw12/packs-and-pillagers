execute unless data storage pnp:board imp[0] run return 0
execute if score #impn pnp.tmp matches 32.. run return 0
data modify storage pnp:board ii set from storage pnp:board imp[0]
function pnp:vanilla/import_slot with storage pnp:board ii
data remove storage pnp:board imp[0]
function pnp:vanilla/import_loop
