function pnp:cardopedia/tile {i:0,x:-2.75,z:-0.55,c:1}
function pnp:cardopedia/tile {i:1,x:-1.75,z:-0.55,c:2}
function pnp:cardopedia/tile {i:2,x:-0.75,z:-0.55,c:3}
function pnp:cardopedia/tile {i:3,x:-2.75,z:0.62,c:4}
function pnp:cardopedia/tile {i:4,x:-1.75,z:0.62,c:5}
function pnp:cardopedia/tile {i:5,x:-0.75,z:0.62,c:6}
function pnp:cardopedia/tile {i:6,x:0.75,z:-0.55,c:7}
function pnp:cardopedia/tile {i:7,x:1.75,z:-0.55,c:8}
function pnp:cardopedia/tile {i:8,x:2.75,z:-0.55,c:9}
function pnp:cardopedia/tile {i:9,x:0.75,z:0.62,c:10}
function pnp:cardopedia/tile {i:10,x:1.75,z:0.62,c:11}
scoreboard players set @s pnp.blast 0
execute as @e[type=text_display,tag=pnp.book_lh,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value {translate:"pnp.card.admin_codex.name",fallback:"Admin Codex",color:"#7a1f1f",bold:true}
execute as @e[type=text_display,tag=pnp.book_rh,distance=..40] if score @s pnp.pid = #me pnp.tmp run data modify entity @s text set value {translate:"pnp.admin.codex_pick",fallback:"Click to spawn",color:"#7a6650"}
