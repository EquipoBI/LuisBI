view: disposiciones_efectivo {
  sql_table_name: broxelco_rdg.DisposicionesEfectivo ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: clabe_destino {
    type: string
    sql: ${TABLE}.ClabeDestino ;;
  }

  dimension: clave_rastreo {
    type: string
    sql: ${TABLE}.ClaveRastreo ;;
  }

  dimension: cuenta_stp {
    type: string
    sql: ${TABLE}.CuentaSTP ;;
  }

  dimension: disp_posantes {
    type: number
    sql: ${TABLE}.DispPOSAntes ;;
  }

  dimension: disp_posdespues {
    type: number
    sql: ${TABLE}.DispPOSDespues ;;
  }

  dimension: envio_pago {
    type: number
    sql: ${TABLE}.EnvioPago ;;
  }

  dimension_group: fecha_hora_creacion {
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
    sql: ${TABLE}.FechaHoraCreacion ;;
  }

  dimension_group: fecha_pago {
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
    sql: ${TABLE}.FechaPago ;;
  }

  dimension: genera_comision {
    type: number
    sql: ${TABLE}.GeneraComision ;;
  }

  dimension: id_transferencia {
    type: number
    sql: ${TABLE}.IdTransferencia ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: motivo {
    type: string
    sql: ${TABLE}.Motivo ;;
  }

  dimension: num_cuenta {
    type: string
    sql: ${TABLE}.NumCuenta ;;
  }

  dimension: num_tarjeta {
    type: string
    sql: ${TABLE}.NumTarjeta ;;
  }

  dimension: referencia_pago {
    type: string
    sql: ${TABLE}.ReferenciaPago ;;
  }

  dimension: status_pago {
    type: string
    sql: ${TABLE}.StatusPago ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
