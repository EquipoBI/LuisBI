view: facturas_despensa {
  sql_table_name: broxelco_rdg.facturasDespensa ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: area_de_trabajo {
    type: string
    sql: ${TABLE}.areaDeTrabajo ;;
  }

  dimension: cancelada {
    type: number
    sql: ${TABLE}.cancelada ;;
  }

  dimension: cfdi {
    type: string
    sql: ${TABLE}.cfdi ;;
  }

  dimension: ciclo {
    type: string
    sql: ${TABLE}.ciclo ;;
  }

  dimension: clave_cliente {
    type: string
    sql: ${TABLE}.claveCliente ;;
  }

  dimension: concepto {
    type: string
    sql: ${TABLE}.concepto ;;
  }

  dimension: correo_enviado {
    type: number
    sql: ${TABLE}.correoEnviado ;;
  }

  dimension: es_despensa {
    type: number
    sql: ${TABLE}.esDespensa ;;
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

  dimension_group: fecha_ultima_mod {
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
    sql: ${TABLE}.fechaUltimaMod ;;
  }

  dimension: folio {
    type: string
    sql: ${TABLE}.folio ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: partidas {
    type: number
    sql: ${TABLE}.partidas ;;
  }

  dimension: producto {
    type: string
    sql: ${TABLE}.producto ;;
  }

  dimension: ruta_cfdi {
    type: string
    sql: ${TABLE}.rutaCfdi ;;
  }

  dimension: ruta_pdf {
    type: string
    sql: ${TABLE}.rutaPDF ;;
  }

  dimension: ruta_pdflocal {
    type: string
    sql: ${TABLE}.rutaPDFLocal ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }

  dimension: subtotal {
    type: number
    sql: ${TABLE}.subtotal ;;
  }

  dimension: timbrado {
    type: number
    sql: ${TABLE}.timbrado ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: ultimos_digitos_num_cuenta {
    type: string
    sql: ${TABLE}.ultimosDigitosNumCuenta ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
