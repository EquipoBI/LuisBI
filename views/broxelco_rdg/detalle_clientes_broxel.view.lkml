view: detalle_clientes_broxel {
  sql_table_name: broxelco_rdg.DetalleClientesBroxel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: abonos {
    type: number
    sql: ${TABLE}.Abonos ;;
  }

  dimension: activa_bloquea {
    type: number
    sql: ${TABLE}.Activa_Bloquea ;;
  }

  dimension: activo {
    type: string
    sql: ${TABLE}.Activo ;;
  }

  dimension: aplica_red_pagos {
    type: string
    sql: ${TABLE}.AplicaRedPagos ;;
  }

  dimension: aplica_spei {
    type: string
    sql: ${TABLE}.AplicaSPEI ;;
  }

  dimension: aplica_speiout {
    type: number
    sql: ${TABLE}.AplicaSPEIOut ;;
  }

  dimension: atm {
    type: number
    sql: ${TABLE}.ATM ;;
  }

  dimension: black_list {
    type: string
    sql: ${TABLE}.BlackList ;;
  }

  dimension: cambio_de_nip {
    type: string
    sql: ${TABLE}.CambioDeNip ;;
  }

  dimension: cargos_b1010 {
    type: number
    sql: ${TABLE}.CargosB1010 ;;
  }

  dimension: clabe {
    type: string
    sql: ${TABLE}.CLABE ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.ClaveCliente ;;
  }

  dimension: comision_disposicion {
    type: number
    sql: ${TABLE}.ComisionDisposicion ;;
  }

  dimension: comision_transferencia {
    type: number
    sql: ${TABLE}.ComisionTransferencia ;;
  }

  dimension: conferma {
    type: string
    sql: ${TABLE}.Conferma ;;
  }

  dimension: correo_notificaciones {
    type: string
    sql: ${TABLE}.CorreoNotificaciones ;;
  }

  dimension: cuenta_concentradora {
    type: string
    sql: ${TABLE}.CuentaConcentradora ;;
  }

  dimension: default_affinity_group {
    type: string
    sql: ${TABLE}.DefaultAffinityGroup ;;
  }

  dimension: desglosa_ieps {
    type: string
    sql: ${TABLE}.DesglosaIEPS ;;
  }

  dimension: devoluciones_de_cuentas {
    type: number
    sql: ${TABLE}.DevolucionesDeCuentas ;;
  }

  dimension: dispersado {
    type: number
    sql: ${TABLE}.Dispersado ;;
  }

  dimension: disposiciones_sin_cobro {
    type: number
    sql: ${TABLE}.DisposicionesSinCobro ;;
  }

  dimension: ejecutivo_comercial {
    type: string
    sql: ${TABLE}.EjecutivoComercial ;;
  }

  dimension: encola_dispersiones {
    type: string
    sql: ${TABLE}.EncolaDispersiones ;;
  }

  dimension: envia_pagos {
    type: string
    sql: ${TABLE}.EnviaPagos ;;
  }

  dimension: envia_smss {
    type: string
    sql: ${TABLE}.EnviaSMSs ;;
  }

  dimension: factor_deposito {
    type: number
    sql: ${TABLE}.FactorDeposito ;;
  }

  dimension_group: fecha_actualizacion_broxel {
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
    sql: ${TABLE}.FechaActualizacionBroxel ;;
  }

  dimension_group: fecha_actualizacion_stp {
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
    sql: ${TABLE}.FechaActualizacionSTP ;;
  }

  dimension_group: fecha_usuario_creacion {
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
    sql: ${TABLE}.FechaUsuarioCreacion ;;
  }

  dimension_group: hora_activacion {
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
    sql: ${TABLE}.HoraActivacion ;;
  }

  dimension_group: hora_bloqueo {
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
    sql: ${TABLE}.HoraBloqueo ;;
  }

  dimension: id_cliente {
    type: number
    sql: ${TABLE}.IdCliente ;;
  }

  dimension: id_dato_valida_stp {
    type: number
    sql: ${TABLE}.IdDatoValidaSTP ;;
  }

  dimension: linea_credito_actual {
    type: number
    sql: ${TABLE}.LineaCreditoActual ;;
  }

  dimension: linea_credito_original {
    type: number
    sql: ${TABLE}.LineaCreditoOriginal ;;
  }

  dimension: monitorea_log_transfer {
    type: string
    sql: ${TABLE}.MonitoreaLogTransfer ;;
  }

  dimension: pagar_servicios {
    type: string
    sql: ${TABLE}.PagarServicios ;;
  }

  dimension: pagos_credito {
    type: number
    sql: ${TABLE}.PagosCredito ;;
  }

  dimension: permite_centro_costos {
    type: string
    sql: ${TABLE}.PermiteCentroCostos ;;
  }

  dimension: permite_p2_p {
    type: string
    sql: ${TABLE}.PermiteP2P ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: recibe_transferencia {
    type: string
    sql: ${TABLE}.RecibeTransferencia ;;
  }

  dimension: smart_data {
    type: string
    sql: ${TABLE}.SmartData ;;
  }

  dimension: smsnotificacion {
    type: string
    sql: ${TABLE}.SMSNotificacion ;;
  }

  dimension: tipo_comision_disposicion {
    type: string
    sql: ${TABLE}.TipoComisionDisposicion ;;
  }

  dimension: tipo_comision_transferencia {
    type: number
    sql: ${TABLE}.TipoComisionTransferencia ;;
  }

  dimension: tipo_concepto_comision_transferencia {
    type: number
    sql: ${TABLE}.TipoConceptoComisionTransferencia ;;
  }

  dimension: tipo_riesgo {
    type: number
    sql: ${TABLE}.TipoRiesgo ;;
  }

  dimension: tope_maximo {
    type: string
    sql: ${TABLE}.TopeMaximo ;;
  }

  dimension: transferencias_b1010 {
    type: number
    sql: ${TABLE}.TransferenciasB1010 ;;
  }

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.UsuarioCreacion ;;
  }

  dimension: validados_stp {
    type: number
    sql: ${TABLE}.validadosSTP ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
