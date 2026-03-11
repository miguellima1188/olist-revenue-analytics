library(tidyverse)
library(scales) # Essencial para formatar números e moedas
library(DBI)
library(RSQLite)

# Criando a conexão com o seu caminho específico
con <- dbConnect(RSQLite::SQLite(), "./data/olist.db")


df_elite <- dbGetQuery(con, "SELECT 
                                p.product_category_name,
                                SUM(i.price) AS faturamento_total
                            FROM olist_order_items_dataset i
                            JOIN olist_products_dataset p ON i.product_id = p.product_id
                            WHERE p.product_category_name IS NOT NULL
                            GROUP BY p.product_category_name
                            HAVING faturamento_total > 100000
                            ORDER BY faturamento_total DESC;")

ggplot(df_elite, aes(x = reorder(product_category_name, faturamento_total), y = faturamento_total)) +
  geom_col(fill = "#112D4E") + # Cor institucional (azul escuro)
  coord_flip() + # Inverte para facilitar a leitura dos nomes das categorias
  scale_y_continuous(labels = label_number(prefix = "R$ ", big.mark = ".")) + 
  labs(
    title = "Top Categorias por Faturamento",
    subtitle = "Apenas categorias com faturamento superior a R$ 100.000",
    x = "Categoria",
    y = "Faturamento Acumulado",
    caption = "Fonte: Dados Olist | Semana 4"
  ) +
  theme_light() # Tema mais limpo e profissional
