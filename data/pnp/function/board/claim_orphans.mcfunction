scoreboard players operation #op pnp.tmp = @s pnp.pid
scoreboard players set #oq pnp.tmp 0
execute as @a[tag=pnp.in_board] if score @s pnp.pid = #op pnp.tmp run scoreboard players set #oq pnp.tmp 1
execute if score #oq pnp.tmp matches 0 run return run kill @s
execute unless entity @s[tag=pnp.camera] unless entity @s[tag=pnp.click] unless entity @s[tag=pnp.cursor] unless entity @s[tag=pnp.tooltip] run return 0
scoreboard players set #os pnp.tmp -1
execute if score @s pnp.sess matches -2147483648.. run scoreboard players operation #os pnp.tmp = @s pnp.sess
scoreboard players set #oq pnp.tmp 0
execute as @a[tag=pnp.in_board] if score @s pnp.pid = #op pnp.tmp if score @s pnp.sess = #os pnp.tmp run scoreboard players set #oq pnp.tmp 1
execute if score #oq pnp.tmp matches 0 run kill @s
