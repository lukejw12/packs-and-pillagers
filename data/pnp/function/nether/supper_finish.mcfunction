execute as @e[type=item_display,tag=pnp.meal] if score @s pnp.mown = #me pnp.tmp at @s run function pnp:supper/animation/arrive_effect
$function pnp:supper/finish {cx:$(cx)}
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,scores={pnp.vord=1..},distance=..40] if score @s pnp.vown = #me pnp.tmp run function pnp:supper/clear_villager
execute if score #unfed pnp.tmp matches 0 if score #part pnp.tmp matches 0 run tellraw @a[tag=pnp.mate] {translate:"pnp.nether.supper_ok",fallback:"Nether table: everyone ate.",color:"gold"}
execute if score #unfed pnp.tmp matches 0 if score #part pnp.tmp matches 1 run tellraw @a[tag=pnp.mate] {translate:"pnp.nether.supper_part",fallback:"Nether table: one villager only got half a meal.",color:"gold"}
execute if score #unfed pnp.tmp matches 1.. run tellraw @a[tag=pnp.mate] {translate:"pnp.nether.supper_starved",fallback:"Nether table: %s villagers went without food.",with:[{score:{name:"#unfed",objective:"pnp.tmp"}}],color:"red"}
$execute if score #chate pnp.tmp matches 0 in pnp:board positioned $(cx) 65 16 if entity @e[type=item_display,tag=pnp.c.villager,distance=..20] run function pnp:quest_board/event_self {qk:"nsup_clean"}
