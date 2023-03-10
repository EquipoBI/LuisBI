view: cliente_broxel_layout {
  sql_table_name: broxelco_rdg.clienteBroxelLayout ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activa_bloquea {
    type: number
    sql: ${TABLE}.Activa_Bloquea ;;
  }

  dimension: actividad_economica {
    type: number
    sql: ${TABLE}.actividadEconomica ;;
  }

  dimension: activo {
    type: number
    sql: ${TABLE}.Activo ;;
  }

  dimension: aplica_red_pagos {
    type: number
    sql: ${TABLE}.AplicaRedPagos ;;
  }

  dimension: aplica_spei {
    type: number
    sql: ${TABLE}.AplicaSPEI ;;
  }

  dimension: atm {
    type: number
    sql: ${TABLE}.ATM ;;
  }

  dimension: cambio_de_nip {
    type: number
    sql: ${TABLE}.CambioDeNip ;;
  }

  dimension: clabedestino {
    type: string
    sql: ${TABLE}.CLABEDestino ;;
  }

  dimension: cliente_br_prefix {
    type: string
    sql: ${TABLE}.clienteBrPrefix ;;
  }

  dimension: cliente_indivdual {
    type: number
    sql: ${TABLE}.ClienteIndivdual ;;
  }

  dimension: codigo_comision {
    type: string
    sql: ${TABLE}.codigoComision ;;
  }

  dimension: comision_disposicion {
    type: number
    sql: ${TABLE}.comisionDisposicion ;;
  }

  dimension: comision_transferencia {
    type: number
    sql: ${TABLE}.ComisionTransferencia ;;
  }

  dimension: concepto {
    type: string
    sql: ${TABLE}.Concepto ;;
  }

  dimension: conferma {
    type: number
    sql: ${TABLE}.Conferma ;;
  }

  dimension: correo_notificaciones {
    type: string
    sql: ${TABLE}.CorreoNotificaciones ;;
  }

  dimension: crea_cliente {
    type: string
    sql: ${TABLE}.creaCliente ;;
  }

  dimension: cuenta_concentradora {
    type: string
    sql: ${TABLE}.CuentaConcentradora ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: desglosa_ieps {
    type: number
    sql: ${TABLE}.DesglosaIEPS ;;
  }

  dimension: disposiciones_sin_cobro {
    type: number
    sql: ${TABLE}.DisposicionesSinCobro ;;
  }

  dimension: ejecutivo_comercial {
    type: string
    sql: ${TABLE}.EjecutivoComercial ;;
  }

  dimension: emite_factura {
    type: number
    sql: ${TABLE}.EmiteFactura ;;
  }

  dimension: encola_dispersiones {
    type: number
    sql: ${TABLE}.EncolaDispersiones ;;
  }

  dimension: envia_pagos {
    type: number
    sql: ${TABLE}.EnviaPagos ;;
  }

  dimension: envia_smss {
    type: number
    sql: ${TABLE}.EnviaSMSs ;;
  }

  dimension: factor_deposito {
    type: number
    sql: ${TABLE}.FactorDeposito ;;
  }

  dimension: grupo_fiscal {
    type: number
    sql: ${TABLE}.GrupoFiscal ;;
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

  dimension: host {
    type: string
    sql: ${TABLE}.host ;;
  }

  dimension: id_app {
    type: number
    sql: ${TABLE}.idApp ;;
  }

  dimension: linea_credito_original {
    type: number
    sql: ${TABLE}.LineaCreditoOriginal ;;
  }

  dimension: monto {
    type: string
    sql: ${TABLE}.Monto ;;
  }

  dimension: pais {
    type: string
    sql: ${TABLE}.pais ;;
  }

  dimension: permite_p2_p {
    type: string
    sql: ${TABLE}.PermiteP2P ;;
  }

  dimension: porcentaje {
    type: string
    sql: ${TABLE}.Porcentaje ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: pull {
    type: string
    sql: ${TABLE}.pull ;;
  }

  dimension: recibe_transferencia {
    type: number
    sql: ${TABLE}.RecibeTransferencia ;;
  }

  dimension: reporta_pld {
    type: number
    sql: ${TABLE}.ReportaPLD ;;
  }

  dimension: smart_data {
    type: number
    sql: ${TABLE}.SmartData ;;
  }

  dimension: smsnotificacion {
    type: string
    sql: ${TABLE}.SMSNotificacion ;;
  }

  dimension: tipo_comision_disposicion {
    type: number
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
    type: number
    sql: ${TABLE}.TopeMaximo ;;
  }

  dimension: usuario_creacion {
    type: string
    sql: ${TABLE}.UsuarioCreacion ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
