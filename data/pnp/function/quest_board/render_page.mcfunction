$function pnp:quest_board/pages/$(k) with storage pnp:board qbr
$data modify storage pnp:board qbl append value {text:"   ",extra:[{translate:"pnp.quest_board.need.$(k)",fallback:"$(h)"},"\n"],color:"#8a7a66",italic:true}
$function pnp:quest_board/tiles {x:$(x),k:"$(k)"}
