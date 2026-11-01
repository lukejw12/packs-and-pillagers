scoreboard players add @s pnp.svk 1
scoreboard players set @s pnp.sph 0
scoreboard players set @s pnp.stm 0
scoreboard players operation #sk pnp.tmp = @s pnp.svk
scoreboard players set #kx pnp.tmp 0
execute as @e[type=item_display,scores={pnp.vord=1..}] if score @s pnp.vown = #me pnp.tmp if score @s pnp.vord = #sk pnp.tmp run scoreboard players set #kx pnp.tmp 1
execute if score #kx pnp.tmp matches 0 run function pnp:supper/animation/end
