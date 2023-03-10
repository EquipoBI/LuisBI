view: cat_state_stp {
  sql_table_name: broxelco_rdg.CatStateSTP ;;

  dimension: id_state_stp {
    type: number
    sql: ${TABLE}.IdStateSTP ;;
  }

  dimension: origin {
    type: string
    sql: ${TABLE}.Origin ;;
  }

  dimension: state_desc {
    type: string
    sql: ${TABLE}.StateDesc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
