$title @a[tag=pnp.mate] title {text:"Raid $(n)",color:"dark_red"}
execute if score #ne pnp.tmp matches 1.. if score #nb pnp.tmp matches 0 run title @a[tag=pnp.mate] subtitle {text:"Evokers are leading them",color:"gray"}
