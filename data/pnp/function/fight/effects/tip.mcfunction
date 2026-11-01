execute if score @s pnp.epoi matches 1.. run data modify storage pnp:board tipj.spl append value {text:"\n☠ Poisoned",color:"dark_green"}
execute if score @s pnp.eslo matches 1.. run data modify storage pnp:board tipj.spl append value {text:"\n❄ Slowed: attacks slower",color:"aqua"}
execute if score @s pnp.ewea matches 1.. run data modify storage pnp:board tipj.spl append value {text:"\n✋ Weakened: hits 1 weaker",color:"gray"}
execute if score @s pnp.efat matches 1.. run data modify storage pnp:board tipj.spl append value {text:"\n⛏ Fatigued: works and attacks slower",color:"gold"}
execute if entity @s[tag=pnp.blinded] run data modify storage pnp:board tipj.spl append value {text:"\n◉ Blinded: misses half its attacks",color:"dark_aqua"}
