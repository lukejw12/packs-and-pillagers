scoreboard players operation #of pnp.tmp = @s pnp.fid
scoreboard players set #ok pnp.tmp 0
execute as @e[type=marker,tag=pnp.fight,distance=..14] if score @s pnp.fid = #of pnp.tmp run scoreboard players set #ok pnp.tmp 1
execute if score #ok pnp.tmp matches 0 run function pnp:fight_box/release
