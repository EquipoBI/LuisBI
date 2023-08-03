view: cliente_cohorte {
  sql_table_name: broxelco_rdg.ClienteCohorte ;;

  dimension: cliente {
    type: string
    sql: ${TABLE}.cliente ;;
  }

  dimension: cohorte {
    type: string
    sql: ${TABLE}.cohorte ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
