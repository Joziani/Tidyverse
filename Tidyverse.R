##### Joziani Mota Vieira

### Pacotes

if(!require(tidyverse)){install.packages("tidyverse");require(tidyverse)}
tidyverse_packages()


# Readr

dados <- read_csv2("dados/desmatamento_amazonia_estados_prodes_2012-2015.csv", n_max = 10)
dados

write_csv2(x = dados, path = "dados/desmatamento_amazonia_estados_prodes_2012-2015_v2.csv")


### Leitura

read_csv() # Arquivos separados por vírgula
read_tsv() # Arquivos separados por tabulação
read_delim() # Arquivos delimitados gerais
read_fwf() # Arquivos de largura fixa
read_table() # Arquivos tabulares em que as colunas são separadas por espaço em branco.
read_log() # Arquivos de log da web
  
### Exportação
  
write_csv()
write_csv2()
write_delim()
write_excel_csv() # Salva de csv para Excel
write_excel_csv2()
write_tsv()
  
# Tibble

head(data.frame(iris))
as_tibble(iris)

# Forcats

fator <- factor(c("a","a","a","b","b", "c", "d", "e"))
fct_collapse(fator, b2 = c("b", "c"), a2 = c("a", "d"))


fct_recode(fator, b2 = "b", b2 = "c", a2 = "a", a2 = "d")

# Transforma os níveis menos frequentes de um fator em um nível “Outros”.
fct_lump(fator, 2, other_level = "Outros")

# Broom

if(!require(broom)){install.packages("broom");require(broom)}

fit <- lm(Sepal.Width ~ Petal.Length + Petal.Width, iris)

tidy(fit)

glance(fit)

augment(fit, data = iris)


# Purrr

name <- c("Jon Snow", 
          "Asha Greyjoy", 
          "Daenerys Targaryen", 
          "Eddard Stark", 
          "Brienne of Tarth",
          "Melisandre",
          "Kevan Lannister", 
          "Davos Seaworth", 
          "Victarion Greyjoy",
          "Sansa Stark")

# Usando imap_chr o nome (.x) e o índice do nome (.y)
imap_chr(name, ~ paste0(.y, ": ", .x))
imap_chr(name, ~ paste0("Got : ", .x))


### Outras Funções

map(.x, .f, ...)
  
map_if(.x, .p, .f, ...)
  
map_at(.x, .at, .f, ...)
  
map_lgl(.x, .f, ...)
  
map_chr(.x, .f, ...)
  
map_int(.x, .f, ...)
  
map_dbl(.x, .f, ...)
  
map_dfr(.x, .f, ..., .id = NULL)
  
map_dfc(.x, .f, ...)
  
walk(.x, .f, ...)
  