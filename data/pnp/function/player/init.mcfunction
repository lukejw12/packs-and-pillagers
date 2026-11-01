scoreboard players add #pid pnp.ids 1
scoreboard players operation @s pnp.pid = #pid pnp.ids
scoreboard players set @s pnp.plot 0
scoreboard players set @s pnp.holding 0
scoreboard players set @s pnp.hover 0
scoreboard players set @s pnp.use 0
scoreboard players set @s pnp.left 0
function pnp:board/give_button
function pnp:board/plot/get_coords
function pnp:board/plot/forceload with storage pnp:board tmp
