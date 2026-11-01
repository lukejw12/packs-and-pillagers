$data modify storage pnp:board tipj.spl append value {text:"\n",extra:[{translate:"pnp.quest.progress",fallback:"Progress: %s / %s",with:["$(a)","$(b)"]}],color:"gold"}
$data modify storage pnp:board tipj.spl append value {text:"\n",extra:[{translate:"pnp.quest.reward",fallback:"Reward: %s",with:["$(r)"]}],color:"green"}
