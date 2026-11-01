data modify storage pnp:board tmp.ret set value {}
data modify storage pnp:board tmp.ret.dim set from entity @s Dimension
data modify storage pnp:board tmp.ret.x set from entity @s Pos[0]
data modify storage pnp:board tmp.ret.y set from entity @s Pos[1]
data modify storage pnp:board tmp.ret.z set from entity @s Pos[2]
data modify storage pnp:board tmp.ret.yaw set from entity @s Rotation[0]
data modify storage pnp:board tmp.ret.pitch set from entity @s Rotation[1]
execute store result storage pnp:board tmp.pid int 1 run scoreboard players get @s pnp.pid
function pnp:board/return/save_for_player with storage pnp:board tmp
