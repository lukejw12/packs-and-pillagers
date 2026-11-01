execute store result score #qx pnp.tmp run data get entity @s Pos[0] 100
execute store result score #qz pnp.tmp run data get entity @s Pos[2] 100
execute if score #qx pnp.tmp < #gx1 pnp.tmp run return run tag @s remove pnp.selc
execute if score #qx pnp.tmp > #gx2 pnp.tmp run return run tag @s remove pnp.selc
execute if score #qz pnp.tmp < #gz1 pnp.tmp run return run tag @s remove pnp.selc
execute if score #qz pnp.tmp > #gz2 pnp.tmp run return run tag @s remove pnp.selc
