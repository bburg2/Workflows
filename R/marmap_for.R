# de data in marmap stoppen
marmap <-vcdExtra::datasets("marmap")

# een forloop om een html te maken voor elk oceaan gebied.
for (i in 1:4){
  rmarkdown::render(here("rmd","ocean_floor.Rmd"), params = list(data = marmap$Item[i]), output_file = marmap$Item[i])
}
