$data modify storage pnp:pedia2 tip.$(id) set value [{text:""},{translate:"pnp.card.$(id).name",fallback:"",color:"#e8e8e8",bold:true},{text:"\n"},{translate:"pnp.card.$(id).type",fallback:"",color:"#a8a8a8"},{text:"\n"},{translate:"pnp.card.$(id).desc",fallback:"",color:"#e8e8e8"}]
$data modify storage pnp:pedia2 tip.$(id)[1].fallback set from storage pnp:cards defs.$(id).name
$data modify storage pnp:pedia2 tip.$(id)[3].fallback set from storage pnp:cards defs.$(id).kn
$data modify storage pnp:pedia2 tip.$(id)[5].fallback set from storage pnp:cards defs.$(id).desc
