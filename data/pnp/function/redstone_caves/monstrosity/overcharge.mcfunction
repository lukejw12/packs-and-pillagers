tag @s add pnp.rm_p2
function pnp:fight/enrage
execute positioned ~0 ~ ~1.5 run function pnp:card/spawn {card:"redstone_cube"}
function pnp:redstone_caves/monstrosity/call {t:"pnp.rm_p2b",n:2,msg:"Overcharged! It is shielded while its Redstone Cubes live.",shield:1}
