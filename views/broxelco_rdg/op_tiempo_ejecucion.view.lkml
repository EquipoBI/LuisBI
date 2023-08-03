view: op_tiempo_ejecucion {
  sql_table_name: broxelco_rdg.Op_tiempo_ejecucion ;;

  dimension: failure_message {
    type: string
    sql: ${TABLE}.FAILURE_MESSAGE ;;
  }

  dimension: id_user {
    type: number
    sql: ${TABLE}.ID_USER ;;
  }

  dimension: interface_name {
    type: string
    sql: ${TABLE}.INTERFACE_NAME ;;
  }

  dimension: operation_name {
    type: string
    sql: ${TABLE}.OPERATION_NAME ;;
  }

  dimension: process_name {
    type: string
    sql: ${TABLE}.PROCESS_NAME ;;
  }

  dimension_group: request {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.REQUEST_TIME ;;
  }

  dimension: result_was_ok {
    type: number
    sql: ${TABLE}.RESULT_WAS_OK ;;
  }

  dimension: segundos {
    type: number
    sql: ${TABLE}.SEGUNDOS ;;
  }

  measure: count {
    type: count
    drill_fields: [process_name, interface_name, operation_name]
  }
}
