#* @apiTitle API examen Marco Arribas
#* @apiDescription API que permite a los usuarios buscar las viviendas que cumplen ciertas condiciones
#* @param precio El precio máximo de la vivienda
#* @param tipo_residencia El tipo de residencia
#* @get /busqueda_piso
function(precio, tipo_residencia) {
  # Leer el archivo CSV
  df <- read.csv("real_estate.csv")
  
  # Convertir precio a numérico (en caso de que venga como string)
  precio <- as.numeric(precio)
  
  # Filtrar las viviendas según los parámetros proporcionados
  viviendas <- df %>% 
    filter(Assessed.Value < precio, Property.Type == tipo_residencia) %>%
    dplyr::select(ID, Address, Assessed.Value)
  
  # Devolver las viviendas filtradas
  return(viviendas)
}
