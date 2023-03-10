view: originacion_status {
  sql_table_name: broxelco_rdg.originacionStatus ;;

  dimension: id_status {
    type: number
    sql: ${TABLE}.idStatus ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
