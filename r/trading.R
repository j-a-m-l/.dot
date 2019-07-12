arkBtc <- function (arkEur, btcEur) {
  arkEur / btcEur
}

binanceFee <- 0.1
bitfinexFee <- 0.1
bl3pFee <- 0.25 # + 0.01€ per order
cossFee <- 0.2
krakenFee <- 0.16
livecoinFee <- 0.18

sell <- function (price, amount, fee = krakenFee) {
  (100 - fee) / 100 * price * amount
}

buy <- function (price, amount, fee = krakenFee) {
  (100 + fee) / 100 * price * amount
}

rebuy <- function (sellPrice, buyPrice, sellAmount, buyAmount = FALSE, sellFee = krakenFee, buyFee = FALSE) {
  if (! buyAmount)
    buyAmount = sellAmount

  if (! buyFee)
    buyFee = sellFee

  sell(sellPrice, sellAmount, sellFee) - buy(buyPrice, buyAmount, buyFee)
}
