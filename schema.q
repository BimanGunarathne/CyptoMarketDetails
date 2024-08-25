\l api.q

marketSchama:([]symbol:(); price:(); volume:(); timestamp:());

storeMarketData:{
    marketData: getMarketData[];
    parsedData: select symbol:`$symbol, price:`float$openPrice, volume:`float$volume, timestamp:.z.p from marketData;
    upsert[`marketSchama;parsedData]
 }

storeMarketData[]