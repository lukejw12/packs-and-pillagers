function pnp:board/size/fill_main
function pnp:coop/mates
execute store result storage pnp:board ms.s int 1 run scoreboard players get @s pnp.msz
function pnp:board/size/grow_message with storage pnp:board ms
playsound minecraft:block.wood.place master @a[tag=pnp.mate] ~ ~ ~ 1 0.8
playsound minecraft:entity.player.levelup master @a[tag=pnp.mate] ~ ~ ~ 0.5 1.6
function pnp:board/size/move_shop
