$execute if score @s pnp.vlvl matches ..4 run data modify storage pnp:board tipj.spl append value {text:"\n◆ ",extra:[{translate:"pnp.villager.xp",fallback:"%s  ·  %s/%s xp",with:["$(n)","$(x)","$(t)"]}],color:"gold"}
$execute if score @s pnp.vlvl matches 5.. run data modify storage pnp:board tipj.spl append value {text:"\n◆ $(n)",color:"gold"}
