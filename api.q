apiUrl1:(":https://api.binance.com/api/v3/trades?symbol=BTCUSDT&limit=100000")
apiUrl2:(":https://api.binance.com/api/v3/ticker/24hr?symbol=BTCUSDT")

response:.Q.hg each (apiUrl1;apiUrl2)

parsedData:.j.k each response

show parsedData