scoreboard players operation #atk pnp.tmp /= #2 pnp.tmp
execute if score #atk pnp.tmp matches ..0 run scoreboard players set #atk pnp.tmp 1
execute as @e[type=item_display,tag=pnp.k.enemy,tag=!pnp.held,tag=!pnp.tgt,distance=..1.8,sort=nearest,limit=1] at @s run function pnp:fight/hit
