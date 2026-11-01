scoreboard players set @s pnp.stf 0
playsound minecraft:entity.evoker.prepare_attack master @a[distance=..32] ~ ~ ~ 0.8 1.2
particle minecraft:witch ~ ~0.6 ~ 0.3 0.3 0.3 0 12
execute at @s facing entity @e[type=item_display,tag=pnp.tgt,sort=nearest,limit=1] feet rotated ~ 0 run function pnp:fight/fangs/line_ally
