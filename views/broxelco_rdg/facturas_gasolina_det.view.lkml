view: facturas_gasolina_det {
  sql_table_name: broxelco_rdg.FacturasGasolinaDet ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: ajuste {
    type: number
    sql: ${TABLE}.ajuste ;;
  }

  dimension: area_de_trabajo {
    type: string
    sql: ${TABLE}.AreaDeTrabajo ;;
  }

  dimension: clave_combustible {
    type: string
    sql: ${TABLE}.claveCombustible ;;
  }

  dimension: clave_estacion {
    type: string
    sql: ${TABLE}.claveEstacion ;;
  }

  dimension: facturar {
    type: number
    sql: ${TABLE}.facturar ;;
  }

  dimension_group: fecha {
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
    sql: ${TABLE}.fecha ;;
  }

  dimension: folio_operacion {
    type: number
    sql: ${TABLE}.folioOperacion ;;
  }

  dimension: id_factura {
    type: number
    sql: ${TABLE}.idFactura ;;
  }

  dimension: identificador {
    type: number
    sql: ${TABLE}.identificador ;;
  }

  dimension: ieps {
    type: number
    sql: ${TABLE}.ieps ;;
  }

  dimension: importe {
    type: number
    sql: ${TABLE}.importe ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: litros {
    type: number
    sql: ${TABLE}.litros ;;
  }

  dimension: nombre_combustible {
    type: string
    sql: ${TABLE}.nombreCombustible ;;
  }

  dimension: rfc_estacion {
    type: string
    sql: ${TABLE}.rfcEstacion ;;
  }

  dimension: tasa {
    type: number
    sql: ${TABLE}.tasa ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: valor_unitario {
    type: number
    sql: ${TABLE}.valorUnitario ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
