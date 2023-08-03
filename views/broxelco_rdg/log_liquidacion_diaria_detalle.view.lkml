view: log_liquidacion_diaria_detalle {
  sql_table_name: broxelco_rdg.log_liquidacion_diaria_detalle ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: 01800_compras {
    type: number
    sql: ${TABLE}."01800Compras" ;;
  }

  dimension: atm {
    type: number
    sql: ${TABLE}.ATM ;;
  }

  dimension: bonif_comisiones_atm {
    type: number
    sql: ${TABLE}.BonifComisionesATM ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: cod_moneda {
    type: string
    sql: ${TABLE}.CodMoneda ;;
  }

  dimension: comercios {
    type: number
    sql: ${TABLE}.Comercios ;;
  }

  dimension: comisiones_atm {
    type: number
    sql: ${TABLE}.ComisionesATM ;;
  }

  dimension: cuentas {
    type: number
    sql: ${TABLE}.Cuentas ;;
  }

  dimension: devoluciones_atm {
    type: number
    sql: ${TABLE}.DevolucionesATM ;;
  }

  dimension: devoluciones_payments {
    type: number
    sql: ${TABLE}.DevolucionesPayments ;;
  }

  dimension: devoluciones_pos {
    type: number
    sql: ${TABLE}.DevolucionesPOS ;;
  }

  dimension: devs_otros {
    type: number
    sql: ${TABLE}.DevsOtros ;;
  }

  dimension_group: fclear {
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
    sql: ${TABLE}.FClear ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: operaciones {
    type: number
    sql: ${TABLE}.Operaciones ;;
  }

  dimension: operaciones_atm {
    type: number
    sql: ${TABLE}.OperacionesATM ;;
  }

  dimension: operaciones_payments {
    type: number
    sql: ${TABLE}.OperacionesPayments ;;
  }

  dimension: operaciones_pos {
    type: number
    sql: ${TABLE}.OperacionesPOS ;;
  }

  dimension: pagos {
    type: number
    sql: ${TABLE}.Pagos ;;
  }

  dimension: payments {
    type: number
    sql: ${TABLE}.Payments ;;
  }

  dimension: porcentaje_tasa_intercambio_pos {
    type: number
    sql: ${TABLE}.PorcentajeTasaIntercambioPOS ;;
  }

  dimension: pos {
    type: number
    sql: ${TABLE}.POS ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: suma_tasa_intercambio_pos {
    type: number
    sql: ${TABLE}.SumaTasaIntercambioPOS ;;
  }

  dimension: tarjetas {
    type: number
    sql: ${TABLE}.Tarjetas ;;
  }

  dimension: transferencias {
    type: number
    sql: ${TABLE}.Transferencias ;;
  }

  dimension: wsotros {
    type: number
    sql: ${TABLE}.WSOtros ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
