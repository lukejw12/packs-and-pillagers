function pnp:coop/mates
function pnp:board/plot/get_coords
execute if score @s pnp.rlvl matches 1 run function pnp:raid/ladder/set {p:3,v:0,r:0,e:0,b:0}
execute if score @s pnp.rlvl matches 2 run function pnp:raid/ladder/set {p:4,v:0,r:0,e:0,b:0}
execute if score @s pnp.rlvl matches 3 run function pnp:raid/ladder/set {p:4,v:1,r:0,e:0,b:0}
execute if score @s pnp.rlvl matches 4 run function pnp:raid/ladder/set {p:5,v:2,r:0,e:0,b:0}
execute if score @s pnp.rlvl matches 5 run function pnp:raid/ladder/set {p:5,v:2,r:0,e:1,b:0}
execute if score @s pnp.rlvl matches 6 run function pnp:raid/ladder/set {p:6,v:2,r:1,e:0,b:0}
execute if score @s pnp.rlvl matches 7 run function pnp:raid/ladder/set {p:6,v:3,r:1,e:1,b:0}
execute if score @s pnp.rlvl matches 8 run function pnp:raid/ladder/set {p:7,v:3,r:2,e:2,b:0}
execute if score @s pnp.rlvl matches 9 run function pnp:raid/ladder/set {p:8,v:4,r:2,e:3,b:0}
execute if score @s pnp.rlvl matches 10 run function pnp:raid/ladder/set {p:8,v:4,r:2,e:2,b:1}
execute if score @s pnp.rlvl matches 11.. run function pnp:raid/ladder/big
scoreboard players operation #ln pnp.tmp = #np pnp.tmp
function pnp:raid/ladder/spawn {enemy:"pillager"}
scoreboard players operation #ln pnp.tmp = #nv pnp.tmp
function pnp:raid/ladder/spawn {enemy:"vindicator"}
execute if score #nr pnp.tmp matches 1.. run function pnp:raid/ravager/spawn {r:"pillager"}
execute if score #nr pnp.tmp matches 2.. run function pnp:raid/ravager/spawn {r:"vindicator"}
scoreboard players operation #ln pnp.tmp = #ne pnp.tmp
function pnp:raid/ladder/spawn_evoker
execute if score #nb pnp.tmp matches 1.. run function pnp:raid/boss
function pnp:raid/ladder/extras
scoreboard players set @s pnp.raid 1
scoreboard players set @s pnp.rkind 1
execute store result storage pnp:board rl.n int 1 run scoreboard players get @s pnp.rlvl
function pnp:raid/ladder/message with storage pnp:board rl
playsound minecraft:event.raid.horn master @s ~ ~ ~ 0.5 1
execute unless entity @s[tag=pnp.in_board] run tellraw @a[tag=pnp.mate] {translate:"pnp.raid.raiders_are_on_their_way_they",fallback:"Raiders are on their way. They move slowly while your board is closed.",color:"red"}
