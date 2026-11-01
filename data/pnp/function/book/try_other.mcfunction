function pnp:book/center
function pnp:book/relative_position
execute unless score #px pnp.tmp matches -3600..3600 run return 0
execute unless score #pz pnp.tmp matches -2250..2250 run return 0
scoreboard players set #bk pnp.tmp 1
scoreboard players operation #me pnp.tmp = @s pnp.pid
scoreboard players set #other pnp.tmp 1
execute as @a[tag=pnp.in_board] if score @s pnp.pid = #me pnp.tmp run function pnp:book/click_at
scoreboard players set #other pnp.tmp 0
