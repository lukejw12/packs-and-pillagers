execute unless score #lastsup pnp.ids matches -2147483648.. run function pnp:supper/init
execute if score #dt pnp.tmp matches 0..11999 if score #day pnp.tmp > #lastsup pnp.ids unless score #pover pnp.ids matches 1 unless function pnp:speed/over_limit/start run function pnp:supper/run_all
execute if score #dt pnp.tmp matches 0..2999 if score #day pnp.tmp > #lastdawn pnp.ids run function pnp:supper/dawn_all
