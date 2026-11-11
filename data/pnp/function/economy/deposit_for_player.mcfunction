$scoreboard players operation #bank$(p) pnp.bank += #earn pnp.tmp
$scoreboard players operation #earn pnp.tmp = #bank$(p) pnp.bank
scoreboard players operation #earn pnp.tmp /= #4 pnp.tmp
$scoreboard players operation #bank$(p) pnp.bank %= #4 pnp.tmp
$scoreboard players operation #esh pnp.tmp = #bank$(p) pnp.bank
$scoreboard players set #bank$(p) pnp.bank 0
$title @a[scores={pnp.here=$(p)}] actionbar [{text:"",extra:[{translate:"pnp.economy.sold_for",fallback:"Sold for"}," "],color:"green"},{score:{name:"#earn",objective:"pnp.tmp"},color:"white"},{text:" ",extra:[{translate:"pnp.economy.emeralds",fallback:"emeralds"}],color:"green"}]
$execute if score #esh pnp.tmp matches 1.. if score #earn pnp.tmp matches 1.. run title @a[scores={pnp.here=$(p)}] actionbar [{text:"",extra:[{translate:"pnp.economy.sold_for",fallback:"Sold for"}," "],color:"green"},{score:{name:"#earn",objective:"pnp.tmp"},color:"white"}," ",{sprite:"item/emerald",atlas:"minecraft:items"},{text:" + ",color:"green"},{score:{name:"#esh",objective:"pnp.tmp"},color:"white"}," ",{sprite:"pnp:item/art/emerald_shard",atlas:"minecraft:items"}]
$execute if score #esh pnp.tmp matches 1.. if score #earn pnp.tmp matches 0 run title @a[scores={pnp.here=$(p)}] actionbar [{text:"",extra:[{translate:"pnp.economy.sold_for",fallback:"Sold for"}," "],color:"green"},{score:{name:"#esh",objective:"pnp.tmp"},color:"white"}," ",{sprite:"pnp:item/art/emerald_shard",atlas:"minecraft:items"}]
