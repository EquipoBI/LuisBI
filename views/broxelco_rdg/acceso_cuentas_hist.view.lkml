view: acceso_cuentas_hist {
  sql_table_name: broxelco_rdg.acceso_cuentas_Hist ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: codigo_afinidad {
    type: string
    sql: ${TABLE}.codigo_afinidad ;;
  }

  dimension: cuenta {
    type: string
    sql: ${TABLE}.Cuenta ;;
  }

  dimension: cuenta_madre {
    type: string
    sql: ${TABLE}.CuentaMadre ;;
  }

  dimension: disponible {
    type: number
    sql: ${TABLE}.Disponible ;;
  }

  dimension: estado_operativo {
    type: string
    sql: ${TABLE}.EstadoOperativo ;;
  }

  dimension: etiqueta_corte {
    type: string
    sql: ${TABLE}.EtiquetaCorte ;;
  }

  dimension_group: fecha_alta {
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
    sql: ${TABLE}.FechaAlta ;;
  }

  dimension_group: fecha_baja {
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
    sql: ${TABLE}.FechaBaja ;;
  }

  dimension_group: fecha_corte {
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
    sql: ${TABLE}.FechaCorte ;;
  }

  dimension_group: fecha_disponible {
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
    sql: ${TABLE}.FechaDisponible ;;
  }

  dimension_group: fecha_max_c2_centrada {
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
    sql: ${TABLE}.FechaMaxC2CEntrada ;;
  }

  dimension_group: fecha_max_c2_csalida {
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
    sql: ${TABLE}.FechaMaxC2CSalida ;;
  }

  dimension_group: fecha_max_dispersion {
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
    sql: ${TABLE}.FechaMaxDispersion ;;
  }

  dimension_group: fecha_max_pago {
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
    sql: ${TABLE}.FechaMaxPago ;;
  }

  dimension_group: fecha_max_transaccion {
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
    sql: ${TABLE}.FechaMaxTransaccion ;;
  }

  dimension_group: fecha_max_transferencia {
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
    sql: ${TABLE}.FechaMaxTransferencia ;;
  }

  dimension_group: fecha_min_c2_centrada {
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
    sql: ${TABLE}.FechaMinC2CEntrada ;;
  }

  dimension_group: fecha_min_c2_csalida {
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
    sql: ${TABLE}.FechaMinC2CSalida ;;
  }

  dimension_group: fecha_min_dispersion {
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
    sql: ${TABLE}.FechaMinDispersion ;;
  }

  dimension_group: fecha_min_pago {
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
    sql: ${TABLE}.FechaMinPago ;;
  }

  dimension_group: fecha_min_transaccion {
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
    sql: ${TABLE}.FechaMinTransaccion ;;
  }

  dimension_group: fecha_min_transferencia {
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
    sql: ${TABLE}.FechaMinTransferencia ;;
  }

  dimension_group: fecha_modificacion {
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
    sql: ${TABLE}.FechaModificacion ;;
  }

  dimension_group: fecha_primer_movimiento {
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
    sql: ${TABLE}.FechaPrimerMovimiento ;;
  }

  dimension_group: fecha_registro {
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
    sql: ${TABLE}.FechaRegistro ;;
  }

  dimension_group: fecha_ultimo_movimiento {
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
    sql: ${TABLE}.FechaUltimoMovimiento ;;
  }

  dimension: limite_compras {
    type: number
    sql: ${TABLE}.LimiteCompras ;;
  }

  dimension: limite_credito {
    type: number
    sql: ${TABLE}.LimiteCredito ;;
  }

  dimension: nivel_cuenta {
    type: number
    sql: ${TABLE}.NivelCuenta ;;
  }

  dimension: primer_movimiento {
    type: string
    sql: ${TABLE}.PrimerMovimiento ;;
  }

  dimension: primer_movimientob {
    type: string
    sql: ${TABLE}.PrimerMovimientob ;;
  }

  dimension: procesador {
    type: string
    sql: ${TABLE}.Procesador ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: tipo_sofipo {
    type: string
    sql: ${TABLE}.TipoSofipo ;;
  }

  dimension: titular {
    type: string
    sql: ${TABLE}.Titular ;;
  }

  dimension: ultimo_movimiento {
    type: string
    sql: ${TABLE}.UltimoMovimiento ;;
  }

  dimension_group: ultimo_movimiento_mes_ant {
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
    sql: ${TABLE}.UltimoMovimientoMesAnt ;;
  }

  dimension: ultimo_movimientob {
    type: string
    sql: ${TABLE}.UltimoMovimientob ;;
  }

  dimension: usuario {
    type: string
    sql: ${TABLE}.usuario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
