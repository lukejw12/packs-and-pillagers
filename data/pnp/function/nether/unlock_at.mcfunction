$execute in pnp:board positioned $(cx) 65.01 13 run function pnp:card/spawn {card:"idea_nether_portal"}
$execute in pnp:board positioned $(cx) 65.01 13 positioned ~1.7 ~ ~ run function pnp:card/spawn {card:"ruined_portal"}
$tellraw @a[scores={pnp.tpid=$(p)}] {translate:"pnp.nether.unlocked",fallback:"The way to the Nether is open. Check your table!",color:"light_purple"}
