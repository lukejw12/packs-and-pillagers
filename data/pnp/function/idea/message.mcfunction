function pnp:coop/mates
title @a[tag=pnp.mate] times 5 45 15
$title @a[tag=pnp.mate] subtitle [{text:"$(name)",color:"gold"},{text:" ",extra:[{translate:"pnp.idea.is_in_the_cardopedia",fallback:"is in the Cardopedia"}],color:"gray"}]
title @a[tag=pnp.mate] title {translate:"pnp.idea.new_idea",fallback:"New idea!",color:"yellow"}
playsound minecraft:entity.player.levelup master @a[tag=pnp.mate] ~ ~ ~ 0.6 1.4
