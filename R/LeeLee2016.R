#' Importar dataset LeeLee2016
#'
#' Esta função importa o dataset LeeLee2016 a partir de um arquivo RDS
#' localizado na pasta data/ do projeto.
#'
#' @rdname importar_lee_lee2016
#' @export
LeeLee2016 <- function() {
  LeeLee2016 <- readRDS("data/LeeLee_v1.rda")
}
