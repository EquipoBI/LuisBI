view: dispersiones_solicitudes {
  sql_table_name: broxelco_rdg.dispersionesSolicitudes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: area_solicitante {
    type: string
    sql: ${TABLE}.areaSolicitante ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.claveCliente ;;
  }

  dimension: cliente {
    type: string
    sql: ${TABLE}.cliente ;;
  }

  dimension: concepto {
    type: string
    sql: ${TABLE}.Concepto ;;
  }

  dimension: cuentas_repetidas {
    type: number
    sql: ${TABLE}.cuentas_repetidas ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: estado {
    type: string
    sql: ${TABLE}.estado ;;
  }

  dimension_group: fecha_aprob_reverso {
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
    sql: ${TABLE}.fechaAprobReverso ;;
  }

  dimension_group: fecha_aprobacion {
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
    sql: ${TABLE}.fechaAprobacion ;;
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

  dimension_group: fecha_ejec_reverso {
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
    sql: ${TABLE}.fechaEjecReverso ;;
  }

  dimension_group: fecha_ejecucion {
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
    sql: ${TABLE}.fechaEjecucion ;;
  }

  dimension_group: fecha_hora_ejec_futuro {
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
    sql: ${TABLE}.FechaHoraEjecFuturo ;;
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
    sql: ${TABLE}.fechaModificacion ;;
  }

  dimension_group: fecha_reverso {
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
    sql: ${TABLE}.fechaReverso ;;
  }

  dimension_group: fecha_verificacion {
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
    sql: ${TABLE}.fechaVerificacion ;;
  }

  dimension: folio {
    type: string
    sql: ${TABLE}.folio ;;
  }

  dimension: id_centro_costos {
    type: number
    sql: ${TABLE}.IdCentroCostos ;;
  }

  dimension: monto_principal {
    type: number
    sql: ${TABLE}.montoPrincipal ;;
  }

  dimension: monto_principal_anul {
    type: number
    sql: ${TABLE}.montoPrincipalAnul ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: programar_afuturo {
    type: string
    sql: ${TABLE}.ProgramarAFuturo ;;
  }

  dimension: reintentos {
    type: number
    sql: ${TABLE}.reintentos ;;
  }

  dimension: rfc {
    type: string
    sql: ${TABLE}.rfc ;;
  }

  dimension: solicitante {
    type: string
    sql: ${TABLE}.solicitante ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: total_cuentas {
    type: number
    sql: ${TABLE}.total_cuentas ;;
  }

  dimension: usuario_aprob_reverso {
    type: string
    sql: ${TABLE}.usuarioAprobReverso ;;
  }

  dimension: usuario_aprobacion {
    type: string
    sql: ${TABLE}.usuarioAprobacion ;;
  }

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.usuarioCreacion ;;
  }

  dimension: usuario_ejec_reverso {
    type: string
    sql: ${TABLE}.usuarioEjecReverso ;;
  }

  dimension: usuario_ejecucion {
    type: string
    sql: ${TABLE}.usuarioEjecucion ;;
  }

  dimension: usuario_modificacion {
    type: string
    sql: ${TABLE}.usuarioModificacion ;;
  }

  dimension: usuario_reverso {
    type: string
    sql: ${TABLE}.usuarioReverso ;;
  }

  dimension: usuario_verificacion {
    type: string
    sql: ${TABLE}.usuarioVerificacion ;;
  }

  dimension: valor_estimado {
    type: number
    sql: ${TABLE}.valor_estimado ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
