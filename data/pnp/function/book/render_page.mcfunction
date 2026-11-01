$scoreboard players add #f$(p) pnp.found 0
$scoreboard players operation #fcount pnp.tmp = #f$(p) pnp.found
$function pnp:book/page {p:$(p),s:$(s),i:$(l),side:"l"}
$function pnp:book/page {p:$(p),s:$(s),i:$(r),side:"r"}
