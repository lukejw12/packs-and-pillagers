function pnp:board/glide/stop
execute on vehicle run tag @s add pnp.ngcam
$execute in pnp:board as @e[type=item_display,tag=pnp.ngcam,limit=1] run tp @s $(cx) 69 26
ride @s mount @e[type=item_display,tag=pnp.ngcam,limit=1]
tag @e[type=item_display,tag=pnp.ngcam] remove pnp.ngcam
rotate @s 180 50
