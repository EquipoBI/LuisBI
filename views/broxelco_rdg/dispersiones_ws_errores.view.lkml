view: dispersiones_ws_errores {
  sql_table_name: broxelco_rdg.dispersiones_ws_errores ;;

  dimension: descripcion {
    type: string
    sql: ${TABLE}.descripcion ;;
  }

  dimension: folio {
    type: number
    sql: ${TABLE}.folio ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
