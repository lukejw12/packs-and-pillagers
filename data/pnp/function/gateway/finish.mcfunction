$scoreboard players set #gres pnp.tmp $(r)
execute if score #gres pnp.tmp matches 0 at @s as @a[tag=pnp.in_board,distance=..80] run function pnp:music/stinger {s:"pnp:music.defeat",t:260}
execute store result storage pnp:board gfn.p int 1 run scoreboard players get @s pnp.pid
function pnp:gateway/finish_for_player with storage pnp:board gfn
