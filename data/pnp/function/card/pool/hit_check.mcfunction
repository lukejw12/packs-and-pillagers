data modify storage pnp:board pkc set from storage pnp:board pk.e[0]
execute unless data storage pnp:board pkc.c run return 0
execute if data storage pnp:board pkc{c:""} run return 0
execute if data storage pnp:board pkc{c:"nothing"} run return 0
function pnp:card/pool/hit with storage pnp:board pkc
