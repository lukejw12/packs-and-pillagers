$execute if score @s pnp.vlvl matches ..4 run data modify storage pnp:board tipj.spl append value {text:"\n◆ $(n)  ·  $(x)/$(t) xp",color:"gold"}
$execute if score @s pnp.vlvl matches 5.. run data modify storage pnp:board tipj.spl append value {text:"\n◆ $(n)",color:"gold"}
