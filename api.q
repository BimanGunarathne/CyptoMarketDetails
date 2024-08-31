getMarketData:{
    url:":https://api.binance.com/api/v3/ticker/24hr";
    response:.Q.hg url;
    data:.j.k response;
    select `$symbol,"F"$lastPrice,"F"$volume from data
 }