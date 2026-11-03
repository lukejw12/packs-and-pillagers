$title @a[scores={pnp.tpid=$(p)}] times 10 100 30
$title @a[scores={pnp.tpid=$(p)}] subtitle {translate:"pnp.common.humble_beginnings",fallback:"Humble Beginnings",color:"gray"}
$title @a[scores={pnp.tpid=$(p)}] title {translate:"pnp.common.chapter_1_complete",fallback:"Chapter 1 Complete",color:"gold",bold:true}
$execute as @a[scores={pnp.tpid=$(p)},tag=pnp.in_board] run function pnp:music/stinger {s:"pnp:music.chapter_complete",t:360}
$tellraw @a[scores={pnp.tpid=$(p)}] [{text:"",extra:[{translate:"pnp.common.chapter_1_complete_2",fallback:"Chapter 1 complete!"}," "],color:"gold",bold:true},{translate:"pnp.common.chapter_2_is_on_its_way",fallback:"Chapter 2, the Nether, is coming in a future update.",color:"gray",bold:false}]
$function pnp:quest/on_event {o:$(p),qk:"rm_dead"}
