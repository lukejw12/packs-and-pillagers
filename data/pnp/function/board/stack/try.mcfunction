$execute unless score #size pnp.tmp matches $(n) run return 0
$execute unless data storage pnp:board scan{counts:$(in)} run return 0
$execute unless data storage pnp:board scan.known.r$(r) run return 0
scoreboard players set #match pnp.tmp 1
data modify storage pnp:board scan.hit set from storage pnp:board scan.list[0]
