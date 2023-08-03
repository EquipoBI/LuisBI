view: cuentas_vales {
  sql_table_name: recursos.cuentas_vales ;;

  dimension: conteo {
    type: number
    sql: ${TABLE}.conteo ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
