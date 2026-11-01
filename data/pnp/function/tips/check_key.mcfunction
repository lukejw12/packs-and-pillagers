$execute unless data storage pnp:cards tipk.$(k) run return 0
$execute if data storage pnp:tips p$(p).$(k) run return 0
$data modify storage pnp:tips p$(p).$(k) set value 1b
$scoreboard players set #tkp pnp.tmp $(p)
$execute as @a[tag=pnp.in_board] if score @s pnp.tpid = #tkp pnp.tmp unless score @s pnp.notips matches 1 run function pnp:tips/say {k:"$(k)"}
