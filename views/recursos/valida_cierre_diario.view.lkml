view: valida_cierre_diario {
  sql_table_name: recursos.valida_cierre_diario ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
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

  dimension: codigo_transaccion {
    type: string
    sql: ${TABLE}.CodigoTransaccion ;;
  }

  dimension: control {
    type: string
    sql: ${TABLE}.Control ;;
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

  dimension: giro {
    type: string
    sql: ${TABLE}.Giro ;;
  }

  dimension: importe_pesos {
    type: number
    sql: ${TABLE}.ImportePesos ;;
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

  dimension: procesador {
    type: string
    sql: ${TABLE}.Procesador ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
