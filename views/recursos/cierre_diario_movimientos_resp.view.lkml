view: cierre_diario_movimientos_resp {
  sql_table_name: recursos.CierreDiarioMovimientos_resp ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: categoria_payments {
    type: string
    sql: ${TABLE}.CategoriaPayments ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: control {
    type: string
    sql: ${TABLE}.Control ;;
  }

  dimension: cuentas {
    type: number
    sql: ${TABLE}.Cuentas ;;
  }

  dimension: descripcion_estatus {
    type: string
    sql: ${TABLE}.DescripcionEstatus ;;
  }

  dimension: estatus {
    type: string
    sql: ${TABLE}.Estatus ;;
  }

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }

  dimension: importe_atm {
    type: number
    sql: ${TABLE}.ImporteATM ;;
  }

  dimension: importe_devoluciones_atm {
    type: number
    sql: ${TABLE}.ImporteDevolucionesATM ;;
  }

  dimension: importe_devoluciones_payments {
    type: number
    sql: ${TABLE}.ImporteDevolucionesPayments ;;
  }

  dimension: importe_devoluciones_pos {
    type: number
    sql: ${TABLE}.ImporteDevolucionesPOS ;;
  }

  dimension: importe_payments {
    type: number
    sql: ${TABLE}.ImportePayments ;;
  }

  dimension: importe_pos {
    type: number
    sql: ${TABLE}.ImportePOS ;;
  }

  dimension: importe_total {
    type: number
    sql: ${TABLE}.ImporteTotal ;;
  }

  dimension: intercambio_atm {
    type: number
    sql: ${TABLE}.IntercambioATM ;;
  }

  dimension: intercambio_payments {
    type: number
    sql: ${TABLE}.IntercambioPayments ;;
  }

  dimension: intercambio_pos {
    type: number
    sql: ${TABLE}.IntercambioPOS ;;
  }

  dimension: operaciones_atm {
    type: number
    sql: ${TABLE}.OperacionesATM ;;
  }

  dimension: operaciones_devoluciones_atm {
    type: number
    sql: ${TABLE}.OperacionesDevolucionesATM ;;
  }

  dimension: operaciones_devoluciones_payments {
    type: number
    sql: ${TABLE}.OperacionesDevolucionesPayments ;;
  }

  dimension: operaciones_devoluciones_pos {
    type: number
    sql: ${TABLE}.OperacionesDevolucionesPOS ;;
  }

  dimension: operaciones_payments {
    type: number
    sql: ${TABLE}.OperacionesPayments ;;
  }

  dimension: operaciones_pos {
    type: number
    sql: ${TABLE}.OperacionesPOS ;;
  }

  dimension: operaciones_total {
    type: number
    sql: ${TABLE}.OperacionesTotal ;;
  }

  dimension: procesador {
    type: string
    sql: ${TABLE}.Procesador ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: tajetas {
    type: number
    sql: ${TABLE}.Tajetas ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
