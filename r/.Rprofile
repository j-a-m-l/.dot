options(editor = "vim")

# Set tab width:
options(tab.width = 2)

reloadRprofile <- function () {
  source("~/.Rprofile")
}

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


#' Future value (assumes that deposits are made at the end of each period)
#'
#' @param interest The interest rate, as percentage (not divided by 100
#' @param compounds The number of compounds per period
futureValue <- function (amount, interest, periods = 1, compounds = 1) {
  rate = interest / 100
  amount * (((1 + rate / compounds) ^ (periods * compounds) - 1) / (rate / compounds))
}

#' Compound interest
#'
#' @param interest The interest rate, as percentage (not divided by 100
#' @param compounds The number of compounds per period
#' @param additional Periodic deposit amount (assumes that they are made at the end of each period)
compoundInterest <- function (presentValue, interest, periods = 1, compounds = 1, additional = 0, entireBalance = FALSE) {
  rate = interest / 100
	balance = presentValue * ((1 + rate / compounds) ^ (periods * compounds))

	if (additional > 0) {
	  balance = balance + futureValue(additional, interest, periods, compounds)
  }

  ifelse(entireBalance, balance, balance - presentValue - additional * periods * compounds)
}

#' TODO Compound interest that subtracts yearly taxes and inflation
#'
#' @param interest The interest rate, as percentage (not divided by 100
#' @param compounds The number of compounds per period
#' @param additional Periodic deposit amount (assumes that they are made at the end of each period)
realCompoundInterest <- function (presentValue, interest, periods = 1, compounds = 1, additional = 0, taxes = 20, inflation = 3, subtractPeriod = 1, returnFinal = FALSE) {
}
