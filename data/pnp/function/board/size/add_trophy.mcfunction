execute if score @s pnp.plot matches 3 run return run function pnp:coop/trophy
tag @e[type=item_display,tag=pnp.trp] remove pnp.trp
execute as @e[type=item_display,tag=pnp.card,distance=..64] if score @s pnp.uid = #uid pnp.tmp run tag @s add pnp.trp
execute if entity @e[type=item_display,tag=pnp.trp,tag=pnp.mounted] run return run function pnp:board/size/trophy_end {m:"This trophy is already on display."}
execute if entity @e[type=item_display,tag=pnp.trp,tag=pnp.c.nether_star] run return run function pnp:board/size/mount_trophy {n:"Wither Trophy"}
execute if entity @e[type=item_display,tag=pnp.trp,tag=pnp.c.dragon_egg] run return run function pnp:board/size/mount_trophy {n:"Dragon Trophy"}
execute if entity @e[type=item_display,tag=pnp.trp,tag=pnp.c.redstone_heart] run return run function pnp:board/size/mount_trophy {n:"Monstrosity Trophy"}
function pnp:board/size/trophy_end {m:"Only the Monstrosity, Wither and Dragon trophies can be mounted."}
