view: comercio_no_reportar {
  sql_table_name: broxelco_rdg.ComercioNoReportar ;;

  dimension: comercio {
    type: string
    sql: ${TABLE}.Comercio ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
