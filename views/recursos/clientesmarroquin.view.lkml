view: clientesmarroquin {
  sql_table_name: recursos.clientesmarroquin ;;

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.ClaveCliente ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
