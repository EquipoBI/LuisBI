view: cat_combustible_producto {
  sql_table_name: broxelco_rdg.cat_combustible_producto ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }

  dimension: combustible {
    type: number
    sql: ${TABLE}.combustible ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
