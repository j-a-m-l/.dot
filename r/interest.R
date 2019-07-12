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
