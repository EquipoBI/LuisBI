view: categorias_comercios {
  sql_table_name: recursos.CategoriasComercios ;;

  dimension: categoria {
    type: string
    sql: ${TABLE}.Categoria ;;
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.Comercio ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.RazonSocial ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
