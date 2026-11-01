execute store result score #bst pnp.tmp run data get storage pnp:pedia2 dtt.st 1000
execute store result score #btz pnp.tmp run data get storage pnp:pedia2 dtt.tzs -1000
scoreboard players set #c1706 pnp.tmp 1706
scoreboard players operation #bst pnp.tmp *= #c1706 pnp.tmp
scoreboard players operation #btz pnp.tmp *= #c1706 pnp.tmp
execute store result storage pnp:pedia2 dtt.bs float 0.000001 run scoreboard players get #bst pnp.tmp
execute store result storage pnp:pedia2 dtt.dy float 0.000001 run scoreboard players get #btz pnp.tmp
function pnp:cardopedia/detail/title with storage pnp:pedia2 dtt
