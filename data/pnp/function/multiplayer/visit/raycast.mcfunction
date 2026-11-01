execute positioned ~ ~-0.9 ~ as @a[tag=!pnp.vme,gamemode=!spectator,distance=..1,sort=nearest,limit=1] run return run tag @s add pnp.vhost
scoreboard players add #vray pnp.tmp 1
execute if score #vray pnp.tmp matches ..14 positioned ^ ^ ^0.25 run function pnp:multiplayer/visit/raycast
