$execute in pnp:board positioned $(cx) 65 16 if entity @e[type=item_display,tag=pnp.c.piglin_merchant,distance=..24] run return 0
$execute in pnp:board positioned $(cx) 65.01 7 positioned ~6 ~ ~ run function pnp:card/spawn {card:"piglin_merchant"}
$execute in pnp:board positioned $(cx) 65 16 as @e[type=item_display,tag=pnp.c.piglin_merchant,tag=!pnp.goldshop,distance=..24] run function pnp:nether/shop_tag with entity @s item.components."minecraft:custom_data"
$tellraw @a[scores={pnp.tpid=$(p)}] {translate:"pnp.nether_trader.arrived",fallback:"A Piglin Merchant stopped by your Nether table! Drop 8 Gold Ingots on it before it leaves.",color:"gold"}
$execute as @a[scores={pnp.tpid=$(p)}] at @s run playsound minecraft:entity.piglin.celebrate master @s ~ ~ ~ 1 1
