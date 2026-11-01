$title @a[tag=pnp.mate] title {translate:"pnp.raid.raid",fallback:"Raid %s",with:["$(n)"],color:"dark_red"}
execute if score #ne pnp.tmp matches 1.. if score #nb pnp.tmp matches 0 run title @a[tag=pnp.mate] subtitle {translate:"pnp.raid.evokers_are_leading_them",fallback:"Evokers are leading them",color:"gray"}
