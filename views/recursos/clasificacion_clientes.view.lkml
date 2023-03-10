view: clasificacion_clientes {
  sql_table_name: recursos.clasificacion_clientes ;;

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.claveCliente ;;
  }

  dimension: nombre_corto {
    type: string
    sql: ${TABLE}.NombreCorto ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: proyecto {
    type: string
    sql: ${TABLE}.Proyecto ;;
  }

  dimension: razon_social {
    type: string
    sql: ${TABLE}.razonSocial ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
