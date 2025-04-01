##DADOS EM PAINEL

grafpainel <- ggplot(Despesacorrenteemsaúdepercapita,
                     mapping = aes(y=SH.XPD.CHEX.PC.CD,
                                   x=year))+
  geom_point()

print(grafpainel)

#CORTE TRANSVERSAL

grafcorte <- ggplot(Despesacorrenteemsaúdepercapita2023,
                    mapping = aes(y=SH.XPD.CHEX.PC.CD,
                                  x=year))+
  geom_point()
print(grafcorte)

#SÉRIE TEMPORAL

grafserie <- ggplot(Despesacorrenteemsaúdepercapitabr,
                    mapping = aes(y=SH.XPD.CHEX.PC.CD,
                                  x=year))+
  geom_line()
print(grafserie)
