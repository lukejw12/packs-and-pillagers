particle minecraft:explosion_emitter ~ ~0.3 ~ 0 0 0 0 1
particle minecraft:flame ~ ~0.2 ~ 1.2 0.1 1.2 0.03 30
particle minecraft:large_smoke ~ ~0.3 ~ 1 0.2 1 0.02 20
playsound minecraft:entity.generic.explode master @a[distance=..48] ~ ~ ~ 1.2 1
execute as @e[type=item_display,tag=pnp.k.enemy,tag=!pnp.held,distance=..3] at @s run function pnp:fight_box/tnt_hit
title @a[distance=..16,limit=1,sort=nearest] actionbar [{text:"",extra:[{translate:"pnp.fight_box.boom",fallback:"BOOM!"}," "],color:"red",bold:true},{score:{name:"#tatk",objective:"pnp.tmp"},color:"white"},{text:" ",extra:[{translate:"pnp.fight_box.damage_to_every_enemy_close_by",fallback:"damage to every enemy close by."}],color:"gold"}]
