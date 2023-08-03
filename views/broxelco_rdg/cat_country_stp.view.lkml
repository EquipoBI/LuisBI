view: cat_country_stp {
  sql_table_name: broxelco_rdg.CatCountrySTP ;;

  dimension: id_countri_stp {
    type: number
    sql: ${TABLE}.IdCountriSTP ;;
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
