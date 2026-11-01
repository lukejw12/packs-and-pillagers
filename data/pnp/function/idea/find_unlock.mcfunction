$execute unless data storage pnp:cards unlock.$(c) run return 0
data remove storage pnp:board fu
$data modify storage pnp:board fu.list set from storage pnp:cards unlock.$(c)
$data modify storage pnp:board fu.p set value $(p)
data modify storage pnp:board fu.names set value []
function pnp:idea/find_loop
execute unless data storage pnp:board fu.names[0] run return 0
$tellraw @a[scores={pnp.here=$(p)}] [{text:"✦ New recipe: ",color:"yellow"},{storage:"pnp:board",nbt:"fu.names[]",interpret:true,separator:", ",color:"white"}]
$execute as @a[scores={pnp.here=$(p)}] at @s run playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 1 1.3
