(:It shows the yield of all the pools of etherium staked:)
for $f in //investingProduct[@name = "Staking"]
let $x := $f/yield
where $f/type/text()="Etherium"
order by $x
return $x/text()
