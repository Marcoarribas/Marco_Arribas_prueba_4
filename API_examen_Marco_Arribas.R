#* @apiTitle API examen Marco Arribas
#* @apiDescription API que permite a los usuarios buscar las viviendas que cumplen ciertas condiciones
#* @param precio:int El precio máximo de la vivienda.
#* @param tipo_residencia:str El tipo de residencia (e.g., "Apartamento", "Casa").
#* @get /busqueda_piso
function(precio, tipo_residencia) {
  library(dplyr)
  df <- read.csv("real_state.csv")
  viviendas <- df %>% 
    filter(Assessed.Value < precio, Property.Type == tipo_residencia) %>%
    select(ID, Address, Assessed.Value)
  return(viviendas)
}
