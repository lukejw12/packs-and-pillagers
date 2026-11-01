function pnp:selection/cursor
execute store result score #bx pnp.tmp run data get entity @e[type=marker,tag=pnp.mycur,limit=1] Pos[0]
execute store result score #bz pnp.tmp run data get entity @e[type=marker,tag=pnp.mycur,limit=1] Pos[2]
