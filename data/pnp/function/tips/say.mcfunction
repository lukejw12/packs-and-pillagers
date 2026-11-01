$data modify storage pnp:board tk.msg set from storage pnp:cards tipk.$(k)
tellraw @s [{text:"",extra:[{translate:"pnp.tips.tip",fallback:"Tip:"}," "],color:"gold"},{storage:"pnp:board",nbt:"tk.msg",interpret:true,color:"gray"},{text:"  ",extra:[{translate:"pnp.tips.turn_tips_off",fallback:"[turn tips off]"}],color:"dark_gray",click_event:{action:"run_command",command:"/trigger pnp.notips"}}]
