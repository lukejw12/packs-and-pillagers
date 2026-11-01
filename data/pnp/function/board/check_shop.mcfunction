scoreboard players operation #scx pnp.tmp = @s pnp.pid
scoreboard players operation #scx pnp.tmp *= #1024 pnp.tmp
execute store result storage pnp:board sc.x int 1 run scoreboard players get #scx pnp.tmp
scoreboard players add #scx pnp.tmp 16
execute store result storage pnp:board sc.cx int 1 run scoreboard players get #scx pnp.tmp
function pnp:board/check_shop_at_plot with storage pnp:board sc
function pnp:board/size/move_shop
