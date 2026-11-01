$data modify storage pnp:board tk.msg set from storage pnp:cards tipk.$(k)
tellraw @s [{text:"Tip: ",color:"gold"},{storage:"pnp:board",nbt:"tk.msg",interpret:true,color:"gray"},{text:"  [turn tips off]",color:"dark_gray",click_event:{action:"run_command",command:"/trigger pnp.notips"}}]
