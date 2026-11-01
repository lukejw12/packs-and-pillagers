execute store result score #lr pnp.tmp run random value 1..2
execute if score #lr pnp.tmp matches 1 run function pnp:card/pop {card:"redstone_awakened"}
execute if score #lr pnp.tmp matches 2 run function pnp:card/pop {card:"monstrosity_helmet"}
function pnp:card/pop {card:"emerald"}
function pnp:card/pop {card:"emerald"}
function pnp:card/pop {card:"emerald"}
function pnp:card/pop {card:"emerald"}
function pnp:card/pop {card:"diamond"}
function pnp:card/pop {card:"golden_apple"}
execute store result score #lr pnp.tmp run random value 1..2
execute if score #lr pnp.tmp matches 1 run function pnp:card/pop {card:"diamond"}
execute store result score #qko pnp.tmp run data get entity @s Pos[0]
scoreboard players add #qko pnp.tmp 64
scoreboard players operation #qko pnp.tmp /= #1024 pnp.tmp
execute store result storage pnp:board gf.p int 1 run scoreboard players get #qko pnp.tmp
function pnp:redstone_caves/chapter_one_flags with storage pnp:board gf
function pnp:redstone_caves/chapter_one_done with storage pnp:board gf
