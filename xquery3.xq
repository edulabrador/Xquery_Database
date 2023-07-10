(:A list of the user boght price of assests that were active and with a current price over the 1000$:)
for $f in //asset[@active = "yes"]
let $x := $f/purchasePrices/purchasePrice/price
where $f[@actualPrice > 1000]
return $x/text()
