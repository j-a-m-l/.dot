options(editor = "vim")

# Set tab width:
options(tab.width = 2)

q <- function (save="no", ...) {
  quit(save=save, ...)
}

arkBtc <- function (arkEur, btcEur) {
  arkEur / btcEur
}

binanceFee <- 0.1
bitfinexFee <- 0.1
bl3pFee <- 0.25 # + 0.01€ per order
cossFee <- 0.2
krakenFee <- 0.16
livecoinFee <- 0.18

sell <- function (price, amount, fee=krakenFee) {
  (100 - fee) / 100 * price * amount
}

buy <- function (price, amount, fee=krakenFee) {
  (100 + fee) / 100 * price * amount
}

rebuy <- function (sellPrice, buyPrice, sellAmount, buyAmount=FALSE, fee=krakenFee) {
  if (! buyAmount)
	buyAmount = sellAmount

  sell(sellPrice, sellAmount, fee) - buy(buyPrice, buyAmount, fee)
}

compoundInterest <- function (presentValue, interest, periods) {
	presentValue * sum((1 + interest / 100)^(0:(periods - 1)) * interest / 100)
}
