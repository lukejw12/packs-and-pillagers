scoreboard players set #imp pnp.tmp 1
data remove storage pnp:board imp
data modify storage pnp:board imp set from block ~ ~ ~ Items
scoreboard players set #impn pnp.tmp 0
function pnp:vanilla/import_loop
execute if score #impn pnp.tmp matches 0 run title @s actionbar {text:"Nothing in that barrel can become a card.",color:"gray"}
execute if score #impn pnp.tmp matches 1.. run title @s actionbar [{text:"Sent ",color:"green"},{score:{name:"#impn",objective:"pnp.tmp"},color:"white"},{text:" cards to your board.",color:"green"}]
execute if score #impn pnp.tmp matches 1.. run playsound minecraft:item.bundle.drop_contents master @s ~ ~ ~ 0.8 1
