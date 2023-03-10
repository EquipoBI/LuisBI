connection: "azurebi"

# include all the views
include: "/views/**/*.view"

datagroup: movimientosbi_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: movimientosbi_default_datagroup

explore: accessos_clientes {}
