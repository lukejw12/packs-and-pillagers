title @a[distance=..48] actionbar {translate:"pnp.redstone_caves.the_core_starts_to_hum_something",fallback:"The core starts to hum. Something is waking up.",color:"red"}
playsound minecraft:block.respawn_anchor.charge master @a[distance=..48] ~ ~ ~ 1 0.5
playsound minecraft:block.beacon.power_select master @a[distance=..48] ~ ~ ~ 0.8 0.5
particle minecraft:dust{color:[1.0,0.1,0.1],scale:2.0} ~ ~0.5 ~ 0.6 0.3 0.6 0 30
