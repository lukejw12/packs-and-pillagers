$execute in pnp:board positioned $(cx) 65 16 positioned ~-76 ~-5 ~-56 store result score #hem pnp.tmp if entity @e[type=item_display,tag=pnp.c.emerald,dx=170,dy=15,dz=140]
$execute in pnp:board positioned $(cx) 65 16 positioned ~-76 ~-5 ~-56 store result score #hcards pnp.tmp if entity @e[type=item_display,tag=pnp.card,tag=!pnp.k.shop,tag=!pnp.k.sell,tag=!pnp.k.book,tag=!pnp.c.cardopedia,tag=!pnp.c.guide_book,tag=!pnp.c.recipe_book,tag=!pnp.c.sell_box,tag=!pnp.c.wrench,tag=!pnp.c.emerald,tag=!pnp.c.emerald_shard,tag=!pnp.c.emerald_block,tag=!pnp.k.enemy,dx=170,dy=15,dz=140]
$execute in pnp:board positioned $(cx) 65 16 positioned ~-76 ~-5 ~-56 store result score #hsh pnp.tmp if entity @e[type=item_display,tag=pnp.c.shelf,dx=170,dy=15,dz=140]
$execute in pnp:board positioned $(cx) 65 16 positioned ~-76 ~-5 ~-56 store result score #hvt pnp.tmp if entity @e[type=item_display,tag=pnp.c.vault,dx=170,dy=15,dz=140]
$execute in pnp:board positioned $(cx) 65 16 positioned ~692 ~-5 ~-56 store result score #hn pnp.tmp if entity @e[type=item_display,tag=pnp.c.emerald,dx=170,dy=15,dz=140]
scoreboard players operation #hem pnp.tmp += #hn pnp.tmp
$execute in pnp:board positioned $(cx) 65 16 positioned ~692 ~-5 ~-56 store result score #hn pnp.tmp if entity @e[type=item_display,tag=pnp.card,tag=!pnp.k.shop,tag=!pnp.k.sell,tag=!pnp.k.book,tag=!pnp.c.cardopedia,tag=!pnp.c.guide_book,tag=!pnp.c.recipe_book,tag=!pnp.c.sell_box,tag=!pnp.c.wrench,tag=!pnp.c.emerald,tag=!pnp.c.emerald_shard,tag=!pnp.c.emerald_block,tag=!pnp.k.enemy,dx=170,dy=15,dz=140]
scoreboard players operation #hcards pnp.tmp += #hn pnp.tmp
$execute in pnp:board positioned $(cx) 65 16 positioned ~692 ~-5 ~-56 store result score #hn pnp.tmp if entity @e[type=item_display,tag=pnp.c.shelf,dx=170,dy=15,dz=140]
scoreboard players operation #hsh pnp.tmp += #hn pnp.tmp
$execute in pnp:board positioned $(cx) 65 16 positioned ~692 ~-5 ~-56 store result score #hn pnp.tmp if entity @e[type=item_display,tag=pnp.c.vault,dx=170,dy=15,dz=140]
scoreboard players operation #hvt pnp.tmp += #hn pnp.tmp
scoreboard players set #hmax pnp.tmp 15
scoreboard players set #h10 pnp.tmp 10
scoreboard players set #h25 pnp.tmp 25
scoreboard players operation #hsh pnp.tmp *= #h10 pnp.tmp
scoreboard players operation #hvt pnp.tmp *= #h25 pnp.tmp
scoreboard players operation #hmax pnp.tmp += #hsh pnp.tmp
scoreboard players operation #hmax pnp.tmp += #hvt pnp.tmp
scoreboard players set #bsl pnp.tmp 0
$execute store result score #bsl pnp.tmp run data get storage pnp:beacon p$(pid).slots
scoreboard players operation #hmax pnp.tmp += #bsl pnp.tmp
