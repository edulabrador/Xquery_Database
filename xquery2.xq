(:We can see here only the yield of bitcoin and usdc been lended and having more than a 2% of revenue:)
for $f in //investingProduct[@name = "Lending"]
let $x := $f/duration
where $f/type/text()=("Usdc","Bitcoin")
order by $x
return 
	if($x>2)
	then $x/text()
	else <i>Error</i>
