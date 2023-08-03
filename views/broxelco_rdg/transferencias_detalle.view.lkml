view: transferencias_detalle {
  sql_table_name: broxelco_rdg.TransferenciasDetalle ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: clave_cliente_destino {
    type: string
    sql: ${TABLE}.ClaveClienteDestino ;;
  }

  dimension: clave_cliente_origen {
    type: string
    sql: ${TABLE}.ClaveClienteOrigen ;;
  }

  dimension: codigo_autorizacion {
    type: string
    sql: ${TABLE}.CodigoAutorizacion ;;
  }

  dimension: codigo_respuesta {
    type: string
    sql: ${TABLE}.CodigoRespuesta ;;
  }

  dimension: cuenta_destino {
    type: string
    sql: ${TABLE}.CuentaDestino ;;
  }

  dimension: cuenta_origen {
    type: string
    sql: ${TABLE}.CuentaOrigen ;;
  }

  dimension: folio_solicitud {
    type: string
    sql: ${TABLE}.FolioSolicitud ;;
  }

  dimension: id_movimiento {
    type: string
    sql: ${TABLE}.IdMovimiento ;;
  }

  dimension: id_solicitud {
    type: number
    sql: ${TABLE}.IdSolicitud ;;
  }

  dimension: monto {
    type: number
    sql: ${TABLE}.Monto ;;
  }

  dimension: monto_comision {
    type: number
    sql: ${TABLE}.MontoComision ;;
  }

  dimension: porcentaje_saldo_total {
    type: number
    sql: ${TABLE}.PorcentajeSaldoTotal ;;
  }

  dimension: producto_destino {
    type: string
    sql: ${TABLE}.ProductoDestino ;;
  }

  dimension: producto_origen {
    type: string
    sql: ${TABLE}.ProductoOrigen ;;
  }

  dimension: saldo_destino_antes {
    type: number
    sql: ${TABLE}.SaldoDestinoAntes ;;
  }

  dimension: saldo_destino_despues {
    type: number
    sql: ${TABLE}.SaldoDestinoDespues ;;
  }

  dimension: saldo_origen_antes {
    type: number
    sql: ${TABLE}.SaldoOrigenAntes ;;
  }

  dimension: saldo_origen_despues {
    type: number
    sql: ${TABLE}.SaldoOrigenDespues ;;
  }

  dimension: tipo_comision {
    type: number
    sql: ${TABLE}.TipoComision ;;
  }

  dimension: tipo_concepto_comision {
    type: number
    sql: ${TABLE}.TipoConceptoComision ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
