#' IRPF 2018
#'
#' @param base
#' @param showTotal The total amount of the year, or the year without quarterly declarations
irpf2018 <- function (base, showTotal = TRUE) {
  step = base

  irpf = min(step, 12450) * 0.19
  if (step > 12450) {
    step = step - 12450
    irpf = irpf + min(step, 20200) * 0.24
    if (step > 20200) {
      step = step - 20200
      irpf = irpf + min(step, 35200) * 0.3
      if (step > 35200) {
        step = step - 35200
        irpf = irpf + min(step, 35200) * 0.37
        if (step > 60000) {
          step = step - 60000
          irpf = irpf + step * 0.45
        }
      }
    }
  }
  ifelse(showTotal, irpf, irpf - base * 0.2)
}
