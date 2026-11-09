$execute as @a[tag=pnp.in_board] at @s in pnp:board if entity @s[x=$(x),y=0,z=-16,dx=48,dy=200,dz=64] run function pnp:board/close
$function pnp:reset/plot {p:$(p),x:$(x)}
function pnp:reset/scores_self
scoreboard players set @s pnp.plot 0
scoreboard players set @s pnp.holding 0
scoreboard players set @s pnp.hover 0
scoreboard players set @s pnp.use 0
scoreboard players set @s pnp.left 0
tellraw @s {translate:"pnp.debug.your_card_table_is_back_to",fallback:"Your card table is back to a fresh start.",color:"green"}
