view: dispersiones_ws_detalles {
  sql_table_name: broxelco_rdg.dispersiones_ws_detalles ;;

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension: folio {
    type: number
    sql: ${TABLE}.folio ;;
  }

  dimension: id_detalle {
    type: number
    sql: ${TABLE}.idDetalle ;;
  }

  dimension: saldo {
    type: number
    sql: ${TABLE}.saldo ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
