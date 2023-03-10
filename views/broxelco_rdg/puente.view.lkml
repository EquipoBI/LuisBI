view: puente {
  sql_table_name: broxelco_rdg.Puente ;;

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: co {
    type: string
    sql: ${TABLE}.Co ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
