execute at @e[type=marker,tag=pnp.glide_me,limit=1] if entity @s[distance=..0.85] run return run function pnp:board/glide/arrive
execute at @s facing entity @e[type=marker,tag=pnp.glide_me,limit=1] feet positioned ^ ^ ^0.8 run tp @s ~ ~ ~
