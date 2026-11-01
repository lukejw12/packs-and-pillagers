$title @a[scores={pnp.tpid=$(p)}] times 10 100 30
$title @a[scores={pnp.tpid=$(p)}] subtitle {text:"Humble Beginnings",color:"gray"}
$title @a[scores={pnp.tpid=$(p)}] title {text:"Chapter 1 Complete",color:"gold",bold:true}
$execute as @a[scores={pnp.tpid=$(p)},tag=pnp.in_board] run function pnp:music/stinger {s:"pnp:music.chapter_complete",t:360}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"Chapter 1 complete! ",color:"gold",bold:true},{text:"Chapter 2 is on its way in a future update.",color:"gray",bold:false}]
$function pnp:quest/on_event {o:$(p),qk:"rm_dead"}
