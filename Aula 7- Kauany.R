library(WDI)
library(ggplot2)
library(dplyr)
# Gráfico Modificado

grafpainel <- ggplot(data = dadospib, 
                     mapping = aes(x = year, y = NY.GDP.MKTP.CD)) +
  # Todos os países com pontos em cinza claro
  geom_point(alpha = 0.4, color = "gray70") +
  # Brasil em destaque (vermelho)
  geom_point(data = filter(dadospib, country == "Brazil"),
             color = "red", size = 2) +
  # Título e rótulos dos eixos
  labs(title = "PIB ao Longo do Tempo",
       x = "Ano",
       y = "PIB (US$ corrente)") +
  # Tema mais moderno
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10),
    legend.position = "none"
  )

grafpainel

# Gráfico Modificado- # DADOS EM PAINEL

grafpainel <- ggplot(data = Despesacorrenteemsaúdepercapita, 
                     mapping = aes(x = year, y = SH.XPD.CHEX.PC.CD)) +
  # Todos os países com pontos em cinza claro
  geom_point(alpha = 0.4, color = "gray70") +
  # Brasil em destaque (vermelho)
  geom_point(data = filter(Despesacorrenteemsaúdepercapita, country == "Brazil"),
             color = "red", size = 2) +
  # Título e rótulos dos eixos
  labs(title = "Desp.corrente em Saúde",
       x = "Ano",
       y = "PIB (US$ corrente)") +
  # Tema mais moderno
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10),
    legend.position = "none"
  )

grafpainel

# Gráfico Modificado- #CORTE TRANSVERSAL

grafcorte <- ggplot(data = Despesacorrenteemsaúdepercapita2019, 
                     mapping = aes(x = year, y = SH.XPD.CHEX.PC.CD)) +
  # Todos os países com pontos em cinza claro
  geom_point(alpha = 0.4, color = "gray70") +
  # Brasil em destaque (vermelho)
  geom_point(data = filter(Despesacorrenteemsaúdepercapita2019, country == "Brazil"),
             color = "red", size = 2) +
  # Título e rótulos dos eixos
  labs(title = "Desp.corrente em Saúde",
       x = "Ano",
       y = "PIB (US$ corrente)") +
  # Tema mais moderno
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10),
    legend.position = "none"
  )
grafcorte

# Gráfico Modificado- #SÉRIE TEMPORAL

grafserie <- ggplot(data = Despesacorrenteemsaúdepercapitabr, 
                    mapping = aes(x = year, y = SH.XPD.CHEX.PC.CD)) +
  # Todos os países com pontos em cinza claro
  geom_point(alpha = 0.4, color = "gray70") +
  # Brasil em destaque (vermelho)
  geom_line(data = filter(Despesacorrenteemsaúdepercapitabr, country == "Brazil"),
             color = "red", size = 2) +
  # Título e rótulos dos eixos
  labs(title = "Desp.corrente em Saúde",
       x = "Ano",
       y = "PIB (US$ corrente)") +
  # Tema mais moderno
  theme_minimal(base_family = "Helvetica") +
  theme(
    plot.title = element_text(face = "bold", size = 16, hjust = 0.5),
    axis.title = element_text(size = 12),
    axis.text = element_text(size = 10),
    legend.position = "none"
  )
grafserie
