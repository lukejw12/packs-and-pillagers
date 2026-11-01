function pnp:coop/mates
function pnp:board/plot/get_coords
function pnp:supper/count with storage pnp:board tmp
execute if score #vil pnp.tmp matches 0 if score #bab pnp.tmp matches 0 run return 0
scoreboard players set #c12 pnp.tmp 2
scoreboard players operation #need pnp.tmp = #vil pnp.tmp
scoreboard players operation #need pnp.tmp *= #c12 pnp.tmp
scoreboard players operation #bneed pnp.tmp = #bab pnp.tmp
scoreboard players operation #need pnp.tmp += #bneed pnp.tmp
execute if score #food pnp.tmp >= #need pnp.tmp run tellraw @a[tag=pnp.mate] [{text:"Supper at dawn: ",color:"gold"},{score:{name:"#food",objective:"pnp.tmp"},color:"green"},{text:" food points stored, and your village needs ",color:"gray"},{score:{name:"#need",objective:"pnp.tmp"},color:"white"},{text:".",color:"gray"}]
execute if score #food pnp.tmp < #need pnp.tmp run tellraw @a[tag=pnp.mate] [{text:"Supper at dawn: ",color:"gold"},{text:"only ",color:"gray"},{score:{name:"#food",objective:"pnp.tmp"},color:"red"},{text:" food points stored, but your village needs ",color:"gray"},{score:{name:"#need",objective:"pnp.tmp"},color:"white"},{text:"! 2 for each villager, 1 for each baby.",color:"red"}]
playsound minecraft:block.bell.use master @s ~ ~ ~ 0.4 1.4
