view: bp_detalle_diario_comercio {
  sql_table_name: broxelco_rdg.bp_detalle_diario_comercio ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: cfdi {
    type: string
    sql: ${TABLE}.cfdi ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.ClaveCliente ;;
  }

  dimension: clave_rastreo {
    type: string
    sql: ${TABLE}.claveRastreo ;;
  }

  dimension: comercio {
    type: string
    sql: ${TABLE}.comercio ;;
  }

  dimension: devoluciones {
    type: number
    sql: ${TABLE}.devoluciones ;;
  }

  dimension: envio_pago {
    type: number
    sql: ${TABLE}.envioPago ;;
  }

  dimension: facturado {
    type: number
    sql: ${TABLE}.facturado ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}.fecha ;;
  }

  dimension_group: fecha_pago {
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
    sql: ${TABLE}.fechaPago ;;
  }

  dimension: folio {
    type: string
    sql: ${TABLE}.folio ;;
  }

  dimension: folio_factura {
    type: string
    sql: ${TABLE}.folioFactura ;;
  }

  dimension: id_programa {
    type: number
    sql: ${TABLE}.idPrograma ;;
  }

  dimension: importe_descuento {
    type: number
    sql: ${TABLE}.importe_descuento ;;
  }

  dimension: importe_ventas {
    type: number
    sql: ${TABLE}.importe_ventas ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: liquidacion_comercio {
    type: number
    sql: ${TABLE}.liquidacion_comercio ;;
  }

  dimension: monto_pagado {
    type: number
    sql: ${TABLE}.monto_pagado ;;
  }

  dimension: motivo {
    type: string
    sql: ${TABLE}.motivo ;;
  }

  dimension: processor {
    type: number
    sql: ${TABLE}.processor ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.Producto ;;
  }

  dimension: ref_pago {
    type: string
    sql: ${TABLE}.refPago ;;
  }

  dimension: st_pago {
    type: string
    sql: ${TABLE}.stPago ;;
  }

  dimension: transacciones {
    type: number
    sql: ${TABLE}.transacciones ;;
  }

  dimension: ventas {
    type: number
    sql: ${TABLE}.ventas ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
