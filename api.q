getMarketData:{
    url:":https://api.binance.com/api/v3/ticker/24hr";
    response:.Q.hg url;
    .j.k response
 }

marketData: getMarketData[]

.z.ts:10000

fetchLoop:{
    marketData: getMarketData[];
    show marketData
 }

// response:.Q.hg apiUrl
// parsedData:.j.k response
// show parsedData