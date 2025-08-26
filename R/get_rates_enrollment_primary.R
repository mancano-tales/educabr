#' Primary School Enrollment Rates in Brazil / Taxas de Matrícula da Educação Primária no Brasil
#'
#' en: Data on enrollment rates in primary education (Ensino Fundamental) in Brazil, population aged 5-14.
#' pt: Dados sobre taxas de matrícula na educação primária no Brasil, população de 5 a 14 anos.
#'
#' @format
#' en: The data frame `data_rates_enrollment_primary` has X rows and Y variables:
#' pt: O data frame `data_rates_enrollment_primary` possui X linhas e Y variáveis:
#' \describe{
#'   \item{year}{en: Year of observation / pt: Ano de referência}
#'   \item{enrollment_rate_paglayan}{en: Enrollment rate in primary education, % of population 5-14 yrs (Paglayan) / pt: Taxa de matrícula na educação primária, % da população 5-14 anos (Paglayan)}
#'   \item{enrollment_rate_pnad}{en: Enrollment rate in primary education, % of population 5-14 yrs (PNAD, IBGE) / pt: Taxa de matrícula na educação primária, % da população 5-14 anos (PNAD, IBGE)}
#'   \item{population}{en: Population of school-age children / pt: População em idade escolar}
#' }
#'
#' @source
#' Paglayan, 2022, "Education of Indoctrination", https://doi.org/10.7910/DVN/LKE1WQ + PNAD (IBGE)
#'
#' @examples
#' str(data_rates_enrollment_primary)
#' head(data_rates_enrollment_primary)
#' summary(data_rates_enrollment_primary)
#' table(data_rates_enrollment_primary$year)
#'
#' if (require("dplyr")) {
#'   data_rates_enrollment_primary %>%
#'     filter(year == 2022) %>%
#'     group_by(state) %>%
#'     summarise(
#'       median_paglayan = median(enrollment_rate_paglayan, na.rm = TRUE),
#'       median_pnad = median(enrollment_rate_pnad, na.rm = TRUE)
#'     )
#' }
"data_rates_enrollment_primary"

#' Load primary school enrollment rates / Carregar taxas de matrícula da educação primária
#'
#' en: Returns the dataset `data_rates_enrollment_primary`.
#' pt: Retorna o dataset `data_rates_enrollment_primary`.
#' @return data.frame
#' @export
get_rates_enrollment_primary <- function() {
  data_rates_enrollment_primary
}
