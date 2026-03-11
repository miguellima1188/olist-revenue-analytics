# 📈 Olist Analytics - Semana 4: Storytelling e Filtros de Performance

## 📌 Objetivo Final do Mês 1
Consolidar a capacidade de gerar relatórios executivos, saindo do dado bruto para uma visualização "Premium". O foco técnico foi o refinamento de queries com filtros agregados e a estilização avançada de gráficos.

## 🛠️ Tecnologias e Técnicas
- **SQL Avançado:** Implementação de `HAVING` para filtragem de métricas agregadas e `IS NOT NULL` para saneamento de dados.
- **R (ggplot2 + scales):** Uso de `coord_flip()`, temas customizados e formatação de moeda brasileira (R$).
- **Saneamento de Dados:** Identificação e tratamento de categorias órfãs (NULLs).

---

## 🔍 Principais Aprendizados Técnicos

### 1. O Filtro de Elite (SQL)
Diferenciamos o uso do `WHERE` (eficiência de processamento) do `HAVING` (lógica de negócio pós-agregação). 
*Query de destaque:* Filtragem de categorias com GMV (Gross Merchandise Volume) > R$ 100k.

### 2. UX de Dados (R)
A implementação de `coord_flip()` e `reorder()` transformou um gráfico ilegível em uma ferramenta de decisão. A formatação de eixos com o pacote `scales` eliminou a carga cognitiva de ler números grandes sem separadores.

---

## 📊 Insight do Mês
A análise revelou que menos de 10% das categorias da Olist são responsáveis pela maior parte da receita. Categorias como 'Beleza e Saúde' e 'Relógios Presentes' são os pilares de faturamento, enquanto dados nulos foram identificados como pontos de melhoria para o time de catálogo.

---

## 📂 Entregáveis Técnicos
- [x] Script SQL com lógica de `HAVING`.
- [x] Visualização customizada em R (Estilo Executivo).
- [x] Documentação de saneamento de dados (Tratamento de NULLs).