trades:([]time:`timestamp$();sym:`symbol$();price:`float$();volume:`float$())
enTrades:.Q.en[`:database;trades]
`:database/trades/ set enTrades

marketData:([] timestamo:(); symbol:(); price:(); volume:())