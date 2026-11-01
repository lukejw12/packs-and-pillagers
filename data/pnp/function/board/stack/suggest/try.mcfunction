$execute unless data storage pnp:board scan.known.r$(r) run return 0
$execute if score #bestn pnp.tmp matches $(n).. run return 0
data modify storage pnp:board sur.il set from storage pnp:board scan.list[0].il
scoreboard players set #ok pnp.tmp 1
function pnp:board/stack/suggest/ingredient_list
execute if score #ok pnp.tmp matches 0 run return 0
$scoreboard players set #bestn pnp.tmp $(n)
data modify storage pnp:board scan.best set from storage pnp:board scan.list[0]
