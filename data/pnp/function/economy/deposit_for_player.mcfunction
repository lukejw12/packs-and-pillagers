$scoreboard players operation #bank$(p) pnp.bank += #earn pnp.tmp
$scoreboard players operation #earn pnp.tmp = #bank$(p) pnp.bank
scoreboard players operation #earn pnp.tmp /= #4 pnp.tmp
$scoreboard players operation #bank$(p) pnp.bank %= #4 pnp.tmp
$title @a[scores={pnp.here=$(p)}] actionbar [{text:"Sold for ",color:"green"},{score:{name:"#earn",objective:"pnp.tmp"},color:"white"},{text:" emeralds",color:"green"}]
