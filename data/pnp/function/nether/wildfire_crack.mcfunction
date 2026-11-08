scoreboard players remove @s pnp.wsh 1
particle minecraft:flame ~ ~0.4 ~ 0.3 0.1 0.3 0.02 12
playsound minecraft:block.anvil.land hostile @a[distance=..24] ~ ~ ~ 0.3 1.7
summon text_display ~ ~0.55 ~ {Tags:["pnp.dmg"],billboard:"center",background:0,brightness:{sky:15,block:15},text:{translate:"pnp.nether.shield_broken",fallback:"shield broken",color:"gold"}}
