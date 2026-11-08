$execute if data storage pnp:found p$(p).$(c) run return 0
$execute store result score #pcn pnp.tmp run data get storage pnp:pity p$(p).$(k)
$execute if score #pcn pnp.tmp matches $(n).. run return run function pnp:progression/pity_give {c:"$(c)"}
$scoreboard players set #pcl pnp.tmp $(n)
scoreboard players operation #pcl pnp.tmp -= #pcn pnp.tmp
$title @a[distance=..48,tag=pnp.in_board] actionbar {translate:"pnp.pity.left",fallback:"%s is guaranteed in %s more trips",with:[{translate:"pnp.card.$(c).name"},{score:{name:"#pcl",objective:"pnp.tmp"}}],color:"gray"}
return 0
