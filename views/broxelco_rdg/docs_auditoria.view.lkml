view: docs_auditoria {
  sql_table_name: broxelco_rdg.docs_auditoria ;;

  dimension: amerita_llamada {
    type: number
    sql: ${TABLE}.AmeritaLlamada ;;
  }

  dimension: amonestacion {
    type: number
    sql: ${TABLE}.Amonestacion ;;
  }

  dimension: auditoria_productos_aceptados {
    type: number
    sql: ${TABLE}.AuditoriaProductosAceptados ;;
  }

  dimension: auditoria_productos_comprados {
    type: number
    sql: ${TABLE}.AuditoriaProductosComprados ;;
  }

  dimension: auditoria_productos_no_aceptados {
    type: number
    sql: ${TABLE}.AuditoriaProductosNoAceptados ;;
  }

  dimension: autorizacion {
    type: string
    sql: ${TABLE}.Autorizacion ;;
  }

  dimension: cuales {
    type: string
    sql: ${TABLE}.Cuales ;;
  }

  dimension: detalle_amonestacion {
    type: string
    sql: ${TABLE}.DetalleAmonestacion ;;
  }

  dimension: documento_identificacion {
    type: string
    sql: ${TABLE}.DocumentoIdentificacion ;;
  }

  dimension: documento_listado_productos {
    type: string
    sql: ${TABLE}.DocumentoListadoProductos ;;
  }

  dimension: documentos {
    type: string
    sql: ${TABLE}.Documentos ;;
  }

  dimension: encuesta_articulos_comprados {
    type: string
    sql: ${TABLE}.EncuestaArticulosComprados ;;
  }

  dimension: encuesta_cuatro_digitos {
    type: string
    sql: ${TABLE}.EncuestaCuatroDigitos ;;
  }

  dimension: encuesta_nombre {
    type: string
    sql: ${TABLE}.EncuestaNombre ;;
  }

  dimension: encuesta_notas {
    type: string
    sql: ${TABLE}.EncuestaNotas ;;
  }

  dimension: encuesta_tienda_compra {
    type: string
    sql: ${TABLE}.EncuestaTiendaCompra ;;
  }

  dimension: estatus_documentos {
    type: string
    sql: ${TABLE}.EstatusDocumentos ;;
  }

  dimension: estatus_factura {
    type: number
    sql: ${TABLE}.EstatusFactura ;;
  }

  dimension: estatus_identificacion {
    type: number
    sql: ${TABLE}.EstatusIdentificacion ;;
  }

  dimension: estatus_productos {
    type: number
    sql: ${TABLE}.EstatusProductos ;;
  }

  dimension: estatus_validar_firma {
    type: number
    sql: ${TABLE}.EstatusValidarFirma ;;
  }

  dimension_group: fecha_audito {
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
    sql: ${TABLE}.FechaAudito ;;
  }

  dimension_group: fecha_upload {
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
    sql: ${TABLE}.FechaUpload ;;
  }

  dimension: id_comercio {
    type: string
    sql: ${TABLE}.IdComercio ;;
  }

  dimension: id_descripcion_amonestacion {
    type: number
    sql: ${TABLE}.IdDescripcionAmonestacion ;;
  }

  dimension: id_documentos_auditoria {
    type: number
    sql: ${TABLE}.IdDocumentosAuditoria ;;
  }

  dimension: monto_facturacion {
    type: number
    sql: ${TABLE}.MontoFacturacion ;;
  }

  dimension: numero_movimiento {
    type: number
    sql: ${TABLE}.NumeroMovimiento ;;
  }

  dimension: referencia {
    type: string
    sql: ${TABLE}.Referencia ;;
  }

  dimension: usuario_audito {
    type: string
    sql: ${TABLE}.UsuarioAudito ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
