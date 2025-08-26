---
output: github_document
---

# educabr: Access Historical Statistics on Brazilian Education <img align="right" src="man/figures/logo-gemini.png.png?raw=true" alt="logo" width="180">

[![License: GPL-3](https://img.shields.io/badge/License-GPL--3-blue.svg)](LICENSE)


**PT-BR:**  
**educabr** é um pacote em R que fornece funções para carregar, manipular e analisar dados sobre educação no Brasil, começando pelo ensino primário.  

**EN:**  
**educabr** is an R package that provides functions to load, manipulate, and analyze data on education in Brazil, starting with primary education.  

---

## Instalação | Installation

**PT-BR:**  
Você pode instalar a versão de desenvolvimento diretamente do GitHub:  

**EN:**
You can install the development version directly from GitHub:


```{r}
install.packages("devtools")
devtools::install_github("mancano-tales/educabr")
```


---

## Exemplo de uso | Example

```{r}
library(educabr)

# PT-BR: Exemplo: carregar taxas de matrícula no ensino primário
# EN: Example: load enrollment rates in primary education
data <- get_rates_enrollment_primary()
head(data)
```

---

## Funções disponíveis | Available functions

* `get_rates_enrollment_primary()`:
  **PT-BR:** carrega dados de taxas de matrícula no ensino primário no Brasil iniciando em 1857.
  **EN:** loads data on primary school enrollment rates in Brazil starting in 1857.

---

## Contribuindo | Contributing

**PT-BR:**
Contribuições são bem-vindas!
Se você encontrar algum problema ou tiver sugestões, abra uma *issue* no repositório.

**EN:**
Contributions are welcome!
If you find any issues or have suggestions, please open an *issue* in the repository.

---

## Licença | License

**PT-BR:**
Este pacote é distribuído sob a licença **GPL-3**.
Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.

**EN:**
This package is released under the **GPL-3** license.
See the [LICENSE](LICENSE) file for more details.

```

Quer que eu adicione também uns **badges no topo** (versão R, licença, CRAN/GitHub install) para deixar o `README` mais bonito e profissional?
```
