view: transferencias_solicitud {
  sql_table_name: broxelco_rdg.TransferenciasSolicitud ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: area_solicitante {
    type: string
    sql: ${TABLE}.AreaSolicitante ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.ClaveCliente ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.Cliente ;;
  }

  dimension: concepto_transferencia {
    type: string
    sql: ${TABLE}.ConceptoTransferencia ;;
  }

  dimension: cuentas_repetidas {
    type: number
    sql: ${TABLE}.CuentasRepetidas ;;
  }

  dimension: email_notificacion {
    type: string
    sql: ${TABLE}.EmailNotificacion ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.Estado ;;
  }

  dimension_group: fecha_hora_aprobacion {
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
    sql: ${TABLE}.FechaHoraAprobacion ;;
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

  dimension_group: fecha_hora_ejecucion {
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
    sql: ${TABLE}.FechaHoraEjecucion ;;
  }

  dimension_group: fecha_hora_verificacion {
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
    sql: ${TABLE}.FechaHoraVerificacion ;;
  }

  dimension: folio {
    type: string
    sql: ${TABLE}.Folio ;;
  }

  dimension: id_centro_costos {
    type: number
    sql: ${TABLE}.IdCentroCostos ;;
  }

  dimension: monto_total {
    type: number
    sql: ${TABLE}.MontoTotal ;;
  }

  dimension: origen {
    type: string
    sql: ${TABLE}.Origen ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: rfc_cliente {
    type: string
    sql: ${TABLE}.RfcCliente ;;
  }

  dimension: solicitante {
    type: string
    sql: ${TABLE}.Solicitante ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.Tipo ;;
  }

  dimension: total_de_cuentas {
    type: number
    sql: ${TABLE}.TotalDeCuentas ;;
  }

  dimension: transf_con_porcentaje {
    type: string
    sql: ${TABLE}.TransfConPorcentaje ;;
  }

  dimension: transf_saldo_total {
    type: string
    sql: ${TABLE}.TransfSaldoTotal ;;
  }

  dimension: usuario_aprobacion {
    type: string
    sql: ${TABLE}.UsuarioAprobacion ;;
  }

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.UsuarioCreacion ;;
  }

  dimension: usuario_ejecucion {
    type: string
    sql: ${TABLE}.UsuarioEjecucion ;;
  }

  dimension: usuario_verificacion {
    type: string
    sql: ${TABLE}.UsuarioVerificacion ;;
  }

  dimension: valor_estimado {
    type: number
    sql: ${TABLE}.ValorEstimado ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
