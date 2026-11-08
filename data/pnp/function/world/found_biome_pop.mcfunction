$execute in pnp:board positioned $(x).5 65.01 20.5 run function pnp:card/pop {card:"$(b)"}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"",extra:[{translate:"pnp.world.found_biome",fallback:"You found a new place! Its card is waiting on your table:"}," "],color:"green"},{translate:"pnp.card.$(b).name",color:"white"}]
