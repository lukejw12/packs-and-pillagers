execute as @e[type=marker,tag=pnp.fight,distance=..4.5,sort=nearest,limit=1] run scoreboard players operation #fid pnp.tmp = @s pnp.fid
function pnp:fight_box/add
