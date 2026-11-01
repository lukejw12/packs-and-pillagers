scoreboard players operation #X1 pnp.tmp = @s pnp.sax
scoreboard players operation #X1 pnp.tmp < #bx pnp.tmp
scoreboard players operation #X2 pnp.tmp = @s pnp.sax
scoreboard players operation #X2 pnp.tmp > #bx pnp.tmp
scoreboard players operation #Z1 pnp.tmp = @s pnp.saz
scoreboard players operation #Z1 pnp.tmp < #bz pnp.tmp
scoreboard players operation #Z2 pnp.tmp = @s pnp.saz
scoreboard players operation #Z2 pnp.tmp > #bz pnp.tmp
scoreboard players add #X2 pnp.tmp 1
scoreboard players add #Z2 pnp.tmp 1
scoreboard players operation #X1 pnp.tmp *= #100 pnp.tmp
scoreboard players operation #X2 pnp.tmp *= #100 pnp.tmp
scoreboard players operation #Z1 pnp.tmp *= #100 pnp.tmp
scoreboard players operation #Z2 pnp.tmp *= #100 pnp.tmp
