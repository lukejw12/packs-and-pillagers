tag @s add pnp.mwait
tellraw @s [{text:"",extra:[{translate:"pnp.menu.waiting_for",fallback:"Waiting for"}," "],color:"gray"},{selector:"@a[tag=pnp.mhost,limit=1]",color:"gold"},{text:" ",extra:[{translate:"pnp.menu.to_choose_how_to_play",fallback:"to choose how to play..."}],color:"gray"}]
