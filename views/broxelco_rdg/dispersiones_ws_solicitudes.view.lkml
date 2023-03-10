view: dispersiones_ws_solicitudes {
  sql_table_name: broxelco_rdg.dispersiones_ws_solicitudes ;;

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: amount_atm {
    type: number
    sql: ${TABLE}.amountATM ;;
  }

  dimension: bloquear_cuenta {
    type: number
    sql: ${TABLE}.bloquearCuenta ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.cuenta ;;
  }

  dimension_group: fecha_creacion {
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
    sql: ${TABLE}.fechaCreacion ;;
  }

  dimension_group: fecha_ult_act {
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
    sql: ${TABLE}.fechaUltAct ;;
  }

  dimension: folio {
    type: number
    sql: ${TABLE}.folio ;;
  }

  dimension: id_solicitud {
    type: string
    sql: ${TABLE}.idSolicitud ;;
  }

  dimension: id_transac_from {
    type: number
    sql: ${TABLE}.idTransacFrom ;;
  }

  dimension: id_upd_lc {
    type: number
    sql: ${TABLE}.idUpdLC ;;
  }

  dimension: id_user {
    type: string
    sql: ${TABLE}.idUser ;;
  }

  dimension: ip_from {
    type: string
    sql: ${TABLE}.ipFrom ;;
  }

  dimension: last_digits {
    type: string
    sql: ${TABLE}.lastDigits ;;
  }

  dimension: referencia {
    type: string
    sql: ${TABLE}.referencia ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: token {
    type: string
    sql: ${TABLE}.token ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
