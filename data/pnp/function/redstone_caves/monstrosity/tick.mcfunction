execute if score @s pnp.hp matches ..112 unless entity @s[tag=pnp.rm_p1] run function pnp:redstone_caves/monstrosity/call {t:"pnp.rm_p1",n:2,msg:"The Monstrosity calls its Redstone Cubes!",shield:0}
execute if score @s pnp.hp matches ..75 unless entity @s[tag=pnp.rm_p2] run function pnp:redstone_caves/monstrosity/overcharge
execute if score @s pnp.hp matches ..37 unless entity @s[tag=pnp.rm_p3] run function pnp:redstone_caves/monstrosity/call {t:"pnp.rm_p3",n:2,msg:"The shield flares up again! Defeat the Redstone Cubes!",shield:1}
execute if entity @s[tag=pnp.rm_shield] unless entity @e[type=item_display,tag=pnp.c.redstone_cube,distance=..15] run function pnp:redstone_caves/monstrosity/unshield
execute if entity @s[tag=pnp.rm_shield] if score #g5 pnp.tmp matches 0 run particle minecraft:dust{color:[1.0,0.12,0.12],scale:1.4} ~ ~0.45 ~ 0.55 0.3 0.55 0 6
execute if score @s pnp.spell matches 120..139 if score #g5 pnp.tmp matches 0 run function pnp:redstone_caves/monstrosity/telegraph
execute if score @s pnp.spell matches 140.. run function pnp:redstone_caves/monstrosity/slam
