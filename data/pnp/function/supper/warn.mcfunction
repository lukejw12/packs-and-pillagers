function pnp:coop/mates
function pnp:board/plot/get_coords
function pnp:supper/count with storage pnp:board tmp
execute if score #vil pnp.tmp matches 0 if score #bab pnp.tmp matches 0 run return 0
scoreboard players set #c12 pnp.tmp 2
scoreboard players operation #need pnp.tmp = #vil pnp.tmp
scoreboard players operation #need pnp.tmp *= #c12 pnp.tmp
scoreboard players operation #bneed pnp.tmp = #bab pnp.tmp
scoreboard players operation #need pnp.tmp += #bneed pnp.tmp
execute if score #food pnp.tmp >= #need pnp.tmp run tellraw @a[tag=pnp.mate] [{text:"",extra:[{translate:"pnp.supper.supper_at_dawn",fallback:"Supper at dawn:"}," "],color:"gold"},{score:{name:"#food",objective:"pnp.tmp"},color:"green"},{text:" ",extra:[{translate:"pnp.supper.food_points_stored_and_your_village",fallback:"food points stored, and your village needs"}," "],color:"gray"},{score:{name:"#need",objective:"pnp.tmp"},color:"white"},{text:".",color:"gray"}]
execute if score #food pnp.tmp < #need pnp.tmp run tellraw @a[tag=pnp.mate] [{text:"",extra:[{translate:"pnp.supper.supper_at_dawn",fallback:"Supper at dawn:"}," "],color:"gold"},{text:"",extra:[{translate:"pnp.supper.only",fallback:"only"}," "],color:"gray"},{score:{name:"#food",objective:"pnp.tmp"},color:"red"},{text:" ",extra:[{translate:"pnp.supper.food_points_stored_but_your_village",fallback:"food points stored, but your village needs"}," "],color:"gray"},{score:{name:"#need",objective:"pnp.tmp"},color:"white"},{translate:"pnp.supper.2_for_each_villager_1_for",fallback:"! 2 for each villager, 1 for each baby.",color:"red"}]
playsound minecraft:block.bell.use master @s ~ ~ ~ 0.4 1.4
