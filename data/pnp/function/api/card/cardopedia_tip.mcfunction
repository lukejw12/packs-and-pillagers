$data modify storage pnp:pedia2 tip.$(id) set value [{text:""},{text:"",color:"#e8e8e8",bold:true},{text:"\n"},{text:"",color:"#a8a8a8"},{text:"\n"},{text:"",color:"#e8e8e8"}]
$data modify storage pnp:pedia2 tip.$(id)[1].text set from storage pnp:cards defs.$(id).name
$data modify storage pnp:pedia2 tip.$(id)[3].text set from storage pnp:cards defs.$(id).kn
$data modify storage pnp:pedia2 tip.$(id)[5].text set from storage pnp:cards defs.$(id).desc
