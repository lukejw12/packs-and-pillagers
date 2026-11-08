scoreboard players set @s pnp.ntick 0
execute unless function pnp:api/machine/take run return 0
data remove storage pnp:board pkr
scoreboard players set #packmode pnp.tmp 1
function pnp:card/pool/pick {p:"barter"}
scoreboard players set #packmode pnp.tmp 0
execute unless data storage pnp:board pkr run return 0
data modify storage pnp:board nem.c set from storage pnp:board pkr
function pnp:api/machine/emit with storage pnp:board nem
