execute if entity @s[tag=pnp.illusion] run return run function pnp:gateway/illusioner/hit
execute if entity @s[tag=pnp.rm_shield] run return run function pnp:redstone_caves/shield_hit
execute if entity @s[tag=pnp.helm_rm] if score #atk pnp.tmp matches 2.. run scoreboard players remove #atk pnp.tmp 1
scoreboard players operation @s pnp.hp -= #atk pnp.tmp
execute if entity @s[tag=pnp.c.illusioner] run function pnp:gateway/illusioner/sync
execute store result storage pnp:board hit.a int 1 run scoreboard players get #atk pnp.tmp
function pnp:fight/hit_text with storage pnp:board hit
particle minecraft:crit ~ ~0.15 ~ 0.2 0.05 0.25 0.15 8
playsound minecraft:entity.player.attack.strong master @a[distance=..24] ~ ~ ~ 0.6 1.2
execute unless score @s pnp.hb matches 1.. run function pnp:fight/hop_start
function pnp:card/label/stats
execute if entity @s[tag=pnp.c.warden,tag=!pnp.enraged,tag=!pnp.illusion] if score @s pnp.hp matches 1..35 run function pnp:fight/enrage
execute if entity @s[tag=pnp.c.breeze,tag=!pnp.enraged,tag=!pnp.illusion] if score @s pnp.hp matches 1..20 run function pnp:fight/enrage
execute if entity @s[tag=pnp.c.illusioner,tag=!pnp.enraged,tag=!pnp.illusion] if score @s pnp.hp matches 1..22 run function pnp:fight/enrage
execute if entity @s[tag=pnp.c.evoker,tag=!pnp.enraged,tag=!pnp.illusion] if score @s pnp.hp matches 1..22 run function pnp:fight/enrage
execute if score @s pnp.hp matches ..0 run function pnp:fight/die
