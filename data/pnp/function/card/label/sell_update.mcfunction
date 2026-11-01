execute on passengers if entity @s[tag=pnp.sell_label] run kill @s
function pnp:card/sell_value with storage pnp:board sll
execute if score #slv pnp.tmp matches ..0 run return 0
execute store result storage pnp:board sll.v int 1 run scoreboard players get #slv pnp.tmp
function pnp:card/label/sell_summon with storage pnp:board sll
