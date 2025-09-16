
#' Load primary school enrollment rates in Brazil / Carregar taxas de matrícula da educação primária no Brasil
#'
#' en: Loads the dataset `educabr` into the user's environment from the package's data directory.
#' pt: Carrega o dataset `educabr` no ambiente do usuário a partir do diretório de dados do pacote.
#'
#' @return data.frame
#' @export
#' @examples
#' educabr()
educabr <- function() {
  # carrega o dataset salvo em data/educabr.rda dentro do pacote
  data("educabr", envir = environment(), package = "nomeDoSeuPacote")
  get("educabr", envir = environment())
}

#educabr <- readxl::read_excel("educabr250914-3.xlsx",
#                              sheet = "educabr3",
#                              col_types = c("numeric",
#                                            "text",
#                                            "text",
#                                            "numeric"))
#
#save(educabr, file = "data/educabr.rda")
