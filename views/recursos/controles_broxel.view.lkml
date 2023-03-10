view: controles_broxel {
  sql_table_name: recursos.ControlesBroxel ;;

  dimension: control {
    type: string
    sql: ${TABLE}.Control ;;
  }

  dimension: mcc {
    type: number
    sql: ${TABLE}.MCC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
