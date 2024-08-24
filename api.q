binanceBaseUrl:":https://api.binance.com/api/v3/ticker/price"
binanceBaseUrlVolume:":https://api.binance.com/api/v3/ticker/24hr"
binanceBaseUrlOrderBook:":https://api.binance.com/api/v3/depth?symbol=BTCUSDT&limit=5"

fetchBinancePriceData:{
    response:.Q.hg binanceBaseUrl;
    jsonData:-9!(`$response);
    parseData:.j.k jsonData;
    parseData
 }

fetchBinanceVolumeData:{
    response:.Q.hg binanceBaseUrlVolume;
    jsonData:-9!(`$response);
    parseData:.j.k jsonData;
    parseData
 }

fetchBinanceOrderBookData:{
    response:.Q.hg binanceBaseUrlOrderBook;
    jsonData:-9!(`$response);
    parseData:.j.k jsonData;
    parseData
 }

.z.ts:{
    tickerData:fetchBinancePriceData[];
    volumeData:fetchBinanceVolumeData[];
    orderBookData:fetchBinanceOrderBookData[];
    combinedData:(tickerData; volumeData; orderBookData);
    show combinedData
    combinedData
 }

\ts 1000

// response:.Q.hg apiUrl
// parsedData:.j.k response
// show parsedData