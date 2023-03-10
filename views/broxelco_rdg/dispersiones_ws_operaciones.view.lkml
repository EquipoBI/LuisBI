view: dispersiones_ws_operaciones {
  sql_table_name: broxelco_rdg.dispersiones_ws_operaciones ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: consecutivo {
    type: number
    sql: ${TABLE}.consecutivo ;;
  }

  dimension: estatus {
    type: number
    sql: ${TABLE}.estatus ;;
  }

  dimension: implementadora {
    type: string
    sql: ${TABLE}.implementadora ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
