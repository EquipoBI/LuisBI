view: productos_broxel {
  sql_table_name: broxelco_rdg.productos_broxel ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: bin {
    type: number
    sql: ${TABLE}.Bin ;;
  }

  dimension: branding {
    type: string
    sql: ${TABLE}.branding ;;
  }

  dimension: cambio_de_nip {
    type: number
    sql: ${TABLE}.CambioDeNip ;;
  }

  dimension: caracteristicas {
    type: string
    sql: ${TABLE}.Caracteristicas ;;
  }

  dimension: codigo {
    type: string
    sql: ${TABLE}.codigo ;;
  }

  dimension: codigo_afinidad {
    type: string
    sql: ${TABLE}.CodigoAfinidad ;;
  }

  dimension: comision_disposicion {
    type: number
    sql: ${TABLE}.ComisionDisposicion ;;
  }

  dimension: comision_transferencia {
    type: number
    sql: ${TABLE}.ComisionTransferencia ;;
  }

  dimension: concepto {
    type: string
    sql: ${TABLE}.Concepto ;;
  }

  dimension: consec_clabe {
    type: string
    sql: ${TABLE}.ConsecCLABE ;;
  }

  dimension: descripcion {
    type: string
    sql: ${TABLE}.Descripcion ;;
  }

  dimension: descripcion_producto {
    type: string
    sql: ${TABLE}.DescripcionProducto ;;
  }

  dimension: dispersa {
    type: number
    sql: ${TABLE}.dispersa ;;
  }

  dimension: disposicion_efectivo {
    type: number
    sql: ${TABLE}.DisposicionEfectivo ;;
  }

  dimension: es_gasoline {
    type: number
    sql: ${TABLE}.EsGasoline ;;
  }

  dimension: generar_clabe {
    type: string
    sql: ${TABLE}.GenerarClabe ;;
  }

  dimension: id0 {
    type: number
    sql: ${TABLE}.ID0 ;;
  }

  dimension: incluir_red_de_pagos {
    type: number
    sql: ${TABLE}.IncluirRedDePagos ;;
  }

  dimension: mensaje1 {
    type: string
    sql: ${TABLE}.mensaje1 ;;
  }

  dimension: mensaje2 {
    type: string
    sql: ${TABLE}.mensaje2 ;;
  }

  dimension: mensaje3 {
    type: string
    sql: ${TABLE}.mensaje3 ;;
  }

  dimension: pagar_servicios {
    type: number
    sql: ${TABLE}.PagarServicios ;;
  }

  dimension: pago_en_linea {
    type: number
    sql: ${TABLE}.PagoEnLinea ;;
  }

  dimension: permite_p2_p {
    type: string
    sql: ${TABLE}.PermiteP2P ;;
  }

  dimension: porcentaje_disposicion {
    type: number
    sql: ${TABLE}.PorcentajeDisposicion ;;
  }

  dimension: programa {
    type: string
    sql: ${TABLE}.Programa ;;
  }

  dimension: recibe_transferencia {
    type: number
    sql: ${TABLE}.RecibeTransferencia ;;
  }

  dimension: seguros_asistencia {
    type: string
    sql: ${TABLE}.SegurosAsistencia ;;
  }

  dimension: smart_data {
    type: number
    sql: ${TABLE}.SmartData ;;
  }

  dimension: tipo {
    type: string
    sql: ${TABLE}.tipo ;;
  }

  dimension: tipo_comision_transferencia {
    type: number
    sql: ${TABLE}.TipoComisionTransferencia ;;
  }

  dimension: tipo_concepto_comision_transferencia {
    type: number
    sql: ${TABLE}.TipoConceptoComisionTransferencia ;;
  }

  dimension: tipo_medidas_maquila {
    type: number
    sql: ${TABLE}.TipoMedidasMaquila ;;
  }

  dimension: tipodaldo {
    type: number
    sql: ${TABLE}.tipodaldo ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
