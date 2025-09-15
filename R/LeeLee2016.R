#' Importar dataset LeeLee2016
#'
#' Esta função importa o dataset LeeLee2016 a partir de um arquivo RDS
#' localizado na pasta data/ do projeto.
#'
#' @param caminho_completo Opcional. Caminho completo para o arquivo. Se não fornecido,
#'                         assume que o arquivo está em "data/LeeLee_v1.rds"
#' @return Um objeto contendo os dados do dataset LeeLee2016
#' @export
#'
#' @examples
#' \dontrun{
#' dados <- importar_lee_lee2016()
#' dados <- importar_lee_lee2016("caminho/alternativo/LeeLee_v1.rds")
#' }
importar_lee_lee2016 <- function(caminho_completo = NULL) {

  # Definir o caminho padrão se não for fornecido
  if (is.null(caminho_completo)) {
    caminho_completo <- "data/LeeLee_v1.rds"
  }

  # Verificar se o arquivo existe
  if (!file.exists(caminho_completo)) {
    stop(paste("Arquivo não encontrado:", caminho_completo,
               "\nVerifique o caminho e se o arquivo existe."))
  }

  # Tentar importar o arquivo RDS
  tryCatch({
    dados <- readRDS(caminho_completo)
    message(paste("Dataset LeeLee2016 importado com sucesso de:", caminho_completo))
    return(dados)
  }, error = function(e) {
    stop(paste("Erro ao importar o arquivo RDS:", e$message))
  })
}

# Versão alternativa com nome mais curto (alias)
#' @rdname importar_lee_lee2016
#' @export
lee_lee2016 <- importar_lee_lee2016
