view: facturas_gasolina {
  sql_table_name: broxelco_rdg.FacturasGasolina ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: area_de_trabajo {
    type: string
    sql: ${TABLE}.AreaDeTrabajo ;;
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

  dimension: ieps {
    type: number
    sql: ${TABLE}.ieps ;;
  }

  dimension: iva {
    type: number
    sql: ${TABLE}.iva ;;
  }

  dimension: partidas {
    type: number
    sql: ${TABLE}.partidas ;;
  }

  dimension: sub_total {
    type: number
    sql: ${TABLE}.subTotal ;;
  }

  dimension: timbrado {
    type: number
    sql: ${TABLE}.timbrado ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.Total ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
