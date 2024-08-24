getMarketData:{
    url:":https://api.binance.com/api/v3/ticker/24hr";
    response:.Q.hg url;
    .j.k response
 }

marketData: getMarketData[]

fetchLoop:{
    marketData: getMarketData[];
    show marketData;
 }

fetchLoop[.z.ts : 1000]